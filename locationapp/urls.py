"""config URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [

    ### http://127.0.0.1:8000/location/garden_list_page
    path('garden_list_page/', views.getGardenListPaging),
    
    ### http://127.0.0.1:8000/location/garden_list_page_map
    path('garden_list_page_map/', views.getGardenListMap),
    
    ### http://127.0.0.1:8000/location/hospital_list_page
    path('hospital_list_page/', views.getHospitalListPaging),

        ### http://127.0.0.1:8000/location/hospital_list_page_map
    path('hospital_list_page_map/', views.getHospitalListMap),

    ### http://127.0.0.1:8000/location/shop_list_page
    path('shop_list_page/', views.getShopListPaging),
    
    ### http://127.0.0.1:8000/location/shop_list_page_map
    path('shop_list_page_map/', views.getShopListMap),
]