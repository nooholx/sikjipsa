from django.shortcuts import render
from django.http import HttpResponse
import locationapp.model_db.location.gardendb.garden as grd
import locationapp.model_db.location.hospitaldb.hospital as hos
import locationapp.model_db.location.shopdb.shop as sp
from django.core.paginator import Paginator


# Create your views here.    
def getGardenListPaging(request):
    
    # 처음 url 접속 시 체크박스 체크 안되어 있음
    # try 구문 우선 수행 -> 
    
    try :
        # page를 가져오는데 ""상태일 거라서 1로 지정해줌
        now_page = request.GET.get("page","1")
        # 문자형을 숫자형으로 변환해주기 위함
        now_page = int(now_page)
        # 
        city = request.GET.get("city","")
    except:
        now_page = 1
        city = ""
    
    if city == 'no':
        city = ""
        
    garden_list = grd.getGardenList(city)
    
    num_row = 10
    
    p = Paginator(garden_list, num_row)
    
    rows_data = p.get_page(now_page)
    
    start_page = (now_page -1) // num_row * num_row + 1
    
    end_page = start_page + 9
    
    if end_page > p.num_pages :
        end_page = p.num_pages
        
    is_prev = False
    is_next = False
    
    if start_page > 1 :
        is_prev = True
        
    if end_page < p.num_pages :
        is_next = True
        
    context = {
        "rows_data" : rows_data,
        "is_prev" : is_prev,
        "is_next" : is_next,
        "start_page" : start_page,
        "page_range" : range(start_page, end_page + 1),
        "page" : now_page,
        "city" : city.replace("'", ""),
        
    }

    return render(request,
                    "locationapp/garden/garden_list_page.html",
                    context)   
    
def getHospitalListPaging(request):

    try :
        
        now_page = request.GET.get("page","1")
        now_page = int(now_page)
        
        city = request.GET.get("city","")
    except:
        now_page = 1
        city = ""
    
    if city == 'no':
        city = ""
        
    hospital_list = hos.getHospitalList(city)
    
    num_row = 10
    
    p = Paginator(hospital_list, num_row)
    
    rows_data = p.get_page(now_page)
    
    start_page = (now_page -1) // num_row * num_row + 1
    
    end_page = start_page + 9
    
    if end_page > p.num_pages :
        end_page = p.num_pages
        
    is_prev = False
    is_next = False
    
    if start_page > 1 :
        is_prev = True
        
    if end_page < p.num_pages :
        is_next = True
        
    context = {
        "rows_data" : rows_data,
        "is_prev" : is_prev,
        "is_next" : is_next,
        "start_page" : start_page,
        "page_range" : range(start_page, end_page + 1),
        "page" : now_page,
        "city" : city.replace("'", ""),
        
    }

    return render(request,
                    "locationapp/hospital/hospital_list_page.html",
                    context) 
    
    
def getShopListPaging(request):

    try :
        now_page = request.GET.get("page","1")
        now_page = int(now_page)
        
        city = request.GET.get("city","")
    except:
        now_page = 1
        city = ""
    
    if city == 'no':
        city = ""
        
    shop_list = sp.getShopList(city)
    
    num_row = 10
    
    p = Paginator(shop_list, num_row)
    
    rows_data = p.get_page(now_page)
    
    start_page = (now_page -1) // num_row * num_row + 1
    
    end_page = start_page + 9
    
    if end_page > p.num_pages :
        end_page = p.num_pages
        
    is_prev = False
    is_next = False
    
    if start_page > 1 :
        is_prev = True
        
    if end_page < p.num_pages :
        is_next = True
        
    context = {
        "rows_data" : rows_data,
        "is_prev" : is_prev,
        "is_next" : is_next,
        "start_page" : start_page,
        "page_range" : range(start_page, end_page + 1),
        "page" : now_page,
        "city" : city.replace("'", ""),
        
    }

    return render(request,
                    "locationapp/shop/shop_list_page.html",
                    context) 


def getShopListMap(request):
    return render(request,
                "locationapp/shop/shop_map.html",
                {}) 

def getGardenListMap(request):
    return render(request,
                "locationapp/garden/garden_map.html",
                {}) 

def getHospitalListMap(request):
    return render(request,
                "locationapp/hospital/hospital_map.html",
                {}) 