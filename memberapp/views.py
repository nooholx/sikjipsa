from django.shortcuts import render
from django.http import HttpResponse
import memberapp.model_db.member.member as mem

# Create your views here.

# 회원조회
def getMemberList(request):
    mem_list = mem.getMemberList()

    return render(request,
                "memberapp\member\mem_list.html",
                {"mem_list":mem_list})
    
def createAccount(request):
    return render(request,
                "memberapp/account/CreateAccount.html",
                {})
    
# 회원가입
def getUserCheck(request):
    try:
        if request.method =="GET":
            inputid = request.GET["inputid"]
            inputname = request.GET["inputname"]
            inputEmail1 = request.GET["inputEmail1"]
            inputPassword1 = request.GET["inputPassword1"]
            inputAddress1 = request.GET["inputAddress1"]
        if request.method =="POST":
            inputid = request.POST["inputid"]
            inputname = request.POST["inputname"]
            inputEmail1 = request.POST["inputEmail1"]
            inputPassword1 = request.POST["inputPassword1"]
            inputAddress1 = request.POST["inputAddress1"]

    except:
        msg = """
            <script type="text/javascript">
                alert('잘못된 접근입니다.');
                window.location.reload();
            </script>
        """
        return HttpResponse(msg)
    
    dict_col = mem.getMemberChk(inputid)

    if dict_col["rs"] == 'yes':
        msg = """
                <script type="text/javascript">
                    alert("이미 가입된 아이디입니다.");
                    history.go(-1);
                </script>
            """
        return HttpResponse(msg)
    
    mem.registerMember(inputid, inputname, inputEmail1, inputPassword1, inputAddress1 )
    
    msg = """
                <script type="text/javascript">
                    alert("가입이 완료되었습니다.");
                    location.href="/etc/index/";
                </script>
            """
    return HttpResponse(msg)

# 로그인
def loginCheck(request):
    try :
        if request.method =="GET":
            mem_id = request.GET["mem_id"]
            mem_pass = request.GET["mem_pass"]
        if request.method =="POST":
            mem_id = request.POST["mem_id"]
            mem_pass = request.POST["mem_pass"]
    except :
        msg = """
            <script type="text/javascript">
                alert('잘못된 접근입니다.');
                location.href="/member/login_form/";
            </script>
        """
        return HttpResponse(msg)
    ## DB
    dict_col = mem.getLogin(mem_id, mem_pass)
    
    ### 성공여부
    if dict_col["rs"] == 'no': 
        msg = """
            <script type="text/javascript">
                alert('아이디 or 패스워드 확인필요!');
                history.go(-1);
            </script>
        """
        return HttpResponse(msg)
    
    request.session["ses_mem_id"] = mem_id
    request.session["ses_mem_name"] = dict_col["mem_name"]
    
    
    return render(request,
                    "memberapp/login/login_session.html/",
                    {})
        
    
### 로그아웃 처리
def logoutCheck(request):
    if request.session.get("ses_mem_id"):
        ### 세션정보 비우기
        request.session.flush()
        
        msg = """
            <script type="text/javascript">
                alert('로그아웃 되었습니다.');
                location.href = '/member/login_logout/';
            </script>
        """
    else :
        msg = """
            <script type="text/javascript">
                alert('잘못된 접근입니다.');
                location.href="/member/login_logout/";
            </script>
        """
    return HttpResponse(msg)


def login_logout(request) :
    return render(request,
                    "memberapp/login/login_logout.html",
                    {})
        
def login(request) :
    if request.session.get("ses_mem_id"):
        return render(request,
                    "memberapp/login/login_logout.html",
                    {})
        
    try :
        if request.method =="GET":
            mem_id = request.GET["mem_id"]
            mem_pass = request.GET["mem_pass"]
        if request.method =="POST":
            mem_id = request.POST["mem_id"]
            mem_pass = request.POST["mem_pass"]
    except :
        msg = """
            <script type="text/javascript">
                alert('잘못된 접근입니다.');
                location.href="/member/login_logout/";
            </script>
        """
        return HttpResponse(msg)
    ## DB
    dict_col = mem.getLogin(mem_id, mem_pass)
    
    ### 성공여부
    if dict_col["rs"] == 'no': 
        msg = """
            <script type="text/javascript">
                alert('아이디 or 패스워드 확인필요!');
                history.go(-1);
            </script>
        """
        return HttpResponse(msg)
   
    request.session["ses_mem_id"] = mem_id
    request.session["ses_mem_name"] = dict_col["mem_name"]
    request.session["ses_mem_mail"] = dict_col["mem_mail"]
    request.session["ses_mem_add1"] = dict_col["mem_add1"]
    request.session["ses_mem_pass"] = dict_col["mem_pass"]
    request.session["ses_mem_delete"] = dict_col["mem_pass"]
    
    
    return render(request,
                    "memberapp/login/login_logout.html/",
                    {})

def logout(request) :
    if request.session.get("ses_mem_id"):
        ### 세션정보 비우기
        request.session.flush()
        
        msg = """
            <script type="text/javascript">
                alert('로그아웃 되었습니다.');
                location.href = '/etc/index/';
            </script>
        """
    else :
        msg = """
            <script type="text/javascript">
                alert('잘못된 접근입니다.');
                location.href="/member/login_logout/";
            </script>
        """
    return HttpResponse(msg)

def userModify(request):
    if request.session.get("ses_mem_id"):
        return render(request,
                    "memberapp/member/mypage.html/",
                    {})
        
    ### 세션이 없다면
    try :
        if request.method =="GET":
            mem_id = request.GET["mem_id"]
            mem_pass = request.GET["mem_pass"]
        if request.method =="POST":
            mem_id = request.POST["mem_id"]
            mem_pass = request.POST["mem_pass"]
    except :
        msg = """
            <script type="text/javascript">

                location.href="/etc/index/";
            </script>
        """
        return HttpResponse(msg)
    
    
    
def setPassword(request):
    if request.session.get("ses_mem_id"):
        return render(request,
                    "memberapp/member/SetPWD.html/",
                    {})
        
    ### 세션이 없다면
    try :
        if request.method =="GET":
            mem_id = request.GET["mem_id"]
            mem_pass = request.GET["mem_pass"]
        if request.method =="POST":
            mem_id = request.POST["mem_id"]
            mem_pass = request.POST["mem_pass"]
    except :
        msg = """
            <script type="text/javascript">
                location.href="/member/set_pw";
            </script>
        """
        return HttpResponse(msg)
    
def modifyPW(request):
    new_pwd= request.POST.get("new_pwd")
    re_pwd = request.POST.get("re_pwd")
    mem_id = request.session.get("ses_mem_id")

    if new_pwd != re_pwd:
        msg = """
            <script type="text/javascript">
                alert("비밀번호가 일치하지 않습니다.");
                history.go(-1);
            </script>
        """
        return HttpResponse(msg)
    
    mem.modifyPWD(mem_id, new_pwd)
    
    msg = """
            <script type="text/javascript">
                alert("비밀번호가 변경되었습니다.");
                location.href="/member/mypage/";
            </script>
        """
    return HttpResponse(msg)


def modifyMypage(request):
    new_mail= request.POST.get("inputEmail1")
    new_addr = request.POST.get("inputAddress1")
    mem_id = request.session.get("ses_mem_id")

    dict_col = mem.getMember(mem_id)

    if new_mail != dict_col["mem_mail"]:
        mem.modifyMail(mem_id, new_mail)
        msg = """
            <script type="text/javascript">
                alert("이메일주소가 변경되었습니다.");
                location.href="/member/mypage/";
            </script>
        """
    
    if new_addr != dict_col["mem_add1"]:
        mem.modifyAddr(mem_id, new_addr)
        msg = """
            <script type="text/javascript">
                alert("집주소가 변경되었습니다.");
                location.href="/member/mypage/";
            </script>
        """
        
    if (new_mail == dict_col["mem_mail"]) and (new_addr == dict_col["mem_add1"]):
        msg = """
            <script type="text/javascript">
                alert("변경된 정보가 없습니다.");
                location.href="/member/mypage/";
            </script>
        """
    
    return HttpResponse(msg)
    

def withdraw(request):
    mem_id = request.session.get("ses_mem_id")
    
    mem.deleteUser(mem_id)
    
    msg = """
        <script type="text/javascript">
            alert("확인을 누르면 계정이 삭제됩니다.");
            alert("계정이 비활성화 되었습니다.");
            location.href="/member/logout/";
        </script>
    """
    
    return HttpResponse(msg)
