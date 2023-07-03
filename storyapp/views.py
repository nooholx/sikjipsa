from django.shortcuts import render
from django.http import HttpResponse
import storyapp.storypy.storyfunc as st
from django.core.paginator import Paginator
from datetime import datetime
import random
import storyapp.storypy.file_manager.file_mangager as fm
from storyapp.storypy.file_util.file_uitl import File_Util

#####################################
### 파일(File) 처리하기 ###
### 파일 처리를 위한 라이브러리 선언해야함
from django.core.files.storage import FileSystemStorage

def goCount(request):
    try:
        p_no = request.GET["post2_no"]
        count = request.GET["post2_count"] 
        count = int(count)
        st.upCount(count+1, p_no)
        msg = """
                <script type='text/javascript'>
                    alert('추천했습니다.');
                    location.href = '/story/main/'
                </script>
            """
        return HttpResponse(msg)
    except:
        msg ="""
            <script type='text/javascript'>
                alert('추천에 실패했습니다.');
                location.href = '/story/main/'
            </script>
            """
        return HttpResponse(msg)


# 검색 메인
def searchMain(request) :
    page = request.GET.get('page', '1')

    try:
        now_page = request.GET.get('page')
        now_page = int(now_page)
    except:
        now_page = 1
    try:
        text = request.POST["search_text"]
    except:
        msg = "검색 값이 없습니다."
        return HttpResponse(msg)
    
    post_list = st.searchPost(text)
    num_row = 10
    p = Paginator(post_list, num_row)
    
    rows_data = p.get_page(now_page)

    start_page = (now_page - 1) // num_row * num_row + 1
    
    end_page = start_page + 9
    
    if end_page > p.num_pages:
        end_page = p.num_pages

    is_prev = False
    is_next = False
    
    if start_page > 1:
        is_prev = True
    
    if end_page < p.num_pages:
        is_next = True

    context = {
        'rows_data' : rows_data,
        'page_range' : range(start_page, end_page + 1),
        'is_prev' : is_prev,
        'is_next' : is_next,
        'start_page' : start_page
    }
    
    return render(request,
                  "storyapp/StoryMainSearch.html",
                  context)


# 게시글 삭제
def StoryDel(request):
    try:
        if request.method == "POST" :
            p_no = request.POST["post2_no"]                  
        elif request.method == "GET":
            p_no = request.GET["post2_no"] 
        st.DeleteDB(p_no)
        msg = """
            <script type='text/javascript'>
                alert('삭제되었습니다.');
                location.href = '/story/main/'
            </script>
        """
    except:
        msg = "삭제 실패"
    return HttpResponse(msg)

# 게시글 입력 폼
def StoryPost(request):
    return render(request,
                  "storyapp/StoryPost.html",
                  {})
# 게시글 수정 폼
def UpdateForm(request):
    p_no = request.GET["post2_no"]
    content = st.post_searchDB(p_no)
    return render(request,
                  "storyapp/UpdateForm.html",
                  {"content":content})

# 파일 수정데이터 폼
def PostUpdate(request):
    try:
        title = request.POST["title"]
        content = request.POST["content"]
        p_no = request.POST["post2_no"]
        if request.FILES.get("file_nm") is not None :
            file_nm = request.FILES.get("file_nm")
        else:
            file_nm = ''
    except:
        msg = """
                <script type='text/javascript'>
                    alert('넌 실패자야 !!');
                    location.href = '/story/main/'
                </script>
        """
        return HttpResponse(msg)
    if file_nm != '':
        upload_dir = "./storyapp/static/storyapp/file_manager/"
        down_dir = "/static/storyapp/file_manager/"
        fu = File_Util()
        fu.setUpload(file_nm, upload_dir, down_dir)
        fu.fileUpload()
        file_nm = fu.file_full_name
        
    rs = st.setUpdate(content,title,file_nm,p_no) 
    if rs == "n":
        msg = """
                <script type='text/javascript'>
                    alert('수정 실패!');
                    location.href = '/story/main/'
                </script>
        """
        return HttpResponse(msg)
    
    msg = """
            <script type='text/javascript'>
                alert('게시글 수정 성공');
                location.href ='/story/main/'
                </script>
        """
    return HttpResponse(msg)

### 파일 데이터 저장
def setFileManagerInsert(request) : 
    try:
        title = request.POST["title"]
        content = request.POST["content"]
        
        if request.FILES.get("file_nm") is not None :
            file_nm = request.FILES.get("file_nm")
        else:
            file_nm = ''
    except:
        msg = """
                <script type='text/javascript'>
                    alert('잘못된 접근입니다. 다시 입력하세요!');
                    location.href = '/story/post/'
                </script>
        """
        return HttpResponse(msg)
    if file_nm == '' or file_nm == None:
        pass
    else:
        upload_dir = "./storyapp/static/storyapp/file_manager/"
        down_dir = "/static/storyapp/file_manager/"
        fu = File_Util()
        fu.setUpload(file_nm, upload_dir, down_dir)
        fu.fileUpload()
        file_nm = fu.file_full_name
    
    p_num = random.randint(1, 100)
    p_no = str(datetime.now().date())
    pno1 = p_no.split("-")
    p_no = pno1[0]+pno1[1]+pno1[2]+str(p_num)
    result = st.chkDB(p_no)
    if result["rs"] == "no":
        st.InsertDB(p_no,content,title,file_nm)
    else:
        p_num = random.randint(1, 100)
        st.InsertDB(p_no,content,title,file_nm)

    msg = """
            <script type='text/javascript'>
                alert('업로드 성공');
                location.href = '/story/main/'
                </script>
        """.format(p_no)
    return HttpResponse(msg)

# 파일정보 한건 조회
def  StoryView(request):
    if request.method == "POST" :
        view_no = request.POST["post2_no"]                  
    elif request.method == "GET":
        view_no = request.GET["post2_no"]           
    content = st.getPostView(view_no)
    return render(request,
                "storyapp/StoryView.html",
                {'content' : content})
    # return HttpResponse(content)

def StoryMain(request) :
    
    ### 페이징 처리 >>>>>>>>>>>>>>>>>>>>>>
    # get('page', '1') : page 정보가 없으면, 1을 사용
    # page = request.GET.get('page', '1') #GET 방식으로 정보를 받아오는 데이터
    
    ### GET 또는 POST로 넘어오는 key:value가 없는 경우에는
    #   try ~ except 처리 필요
    try:
        now_page = request.GET.get('page', 1)
        now_page = int(now_page)
    except:
        now_page = 1

    post_list = st.getPostMain()
    
    ### 페이징 처리 >>>>>>>>>>>>>>>>>>>>>>
    # 한 페이지에 보여줄 행의 갯수 지정
    num_row = 10
    
    ### 페이징 처리 라이브러리에 조회 결과 및 
    # 한페이지에 보여줄 갯수를 넘겨주면,
    # 페이징 처리 라이브러리 클래스에서 10개씩 쪼개서
    # 페이지 번호별로 관리함
    p = Paginator(post_list, num_row)
    
    ### 현재 페이지 번호(now_page)에 해당하는 10건의 데이터 추출 
    rows_data = p.get_page(now_page)

    # 게시물 하단에 표시할 시작 페이지 번호(start_page) 계산하기
    start_page = (now_page - 1) // num_row * num_row + 1
    
    # 게시물 하단에 표시할 종료 페이지 번호(end_page) 계산하기
    end_page = start_page + 9
    
    ### 현재 페이지 번호(num_pages)가 
    # 종료 페이지 번호(end_page)보다 크면
    # 종료 페이지 번호(end_page)를 전체 페이지 번호(num_pages)로 처리
    if end_page > p.num_pages:
        end_page = p.num_pages

    # is_prev(이전), is_next(다음) 버튼을 보여줄지 여부 처리
    is_prev = False
    is_next = False
    
    ### 시작 페이지 번호(start_page)가 1보다 크면 is_prev(이전) 버튼 보이기
    # - 다음 버튼을 클릭하지 않는 이상 시작페이지는 1이됨
    if start_page > 1:
        is_prev = True
    
    ### 종료 페이지 번호(end_page)가 
    # 전체 페이지 번호(num_pages)보다 작으면
    # is_next(다음) 버튼 보이기
    if end_page < p.num_pages:
        is_next = True

    context = {
        ### DB에서 조회한 데이터 중 페이지에 보여질 10건의 데이터
        'rows_data' : rows_data,
        ### 페이지 번호의 시작값과 종료값의 범위 지정
        'page_range' : range(start_page, end_page + 1),
        ### 이전 버튼을 보여줄지 말지에 대한 True or False
        'is_prev' : is_prev,
        ### 다음 버튼을 보여줄지 말지에 대한 True or False
        'is_next' : is_next,
        'start_page' : start_page
    }
    
    return render(request,
                  "storyapp/StoryMain.html",
                  context)
    

def PostLoginCheck(request) :
    if request.session.get("ses_mem_id") :
        return render(request,          
                  "storyapp/storyPost.html",
                  {})
    try :
        if request.method == "POST" :
            mem_id = request.POST["mem_id"]
            mem_pass = request.POST["mem_pass"]
                    
        elif request.method == "GET" :        
            mem_id = request.GET["mem_id"]
            mem_pass = request.GET["mem_pass"]
    except :
        msg = """
                <script type='text/javascript'>
                    alert('글을 쓰려면 로그인 해주세요!');
                    location.href = '/story/main/'
                </script>
        """
        return HttpResponse(msg)  
    
    
def StoryCook(request):
    return render(request,
                  "storyapp/StoryCook.html",
                  {})
    
def StoryPlant(request):
    return render(request,
                  "storyapp/StoryPlant.html",
                  {})
    
    
def getMemberList(request):
    mem_list = st.getMemberList()
    return render(request,
                  "storyapp/TestPage.html",
                  {"mem_list":mem_list})