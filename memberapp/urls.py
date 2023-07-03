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
    ### http://127.0.0.1:8000/member/mem_list
    path('mem_list/', views.getMemberList),
    
    ### http://127.0.0.1:8000/member/create_account
    path('create_account/', views.createAccount),
    
    ### http://127.0.0.1:8000/member/create_account
    path('create_account/', views.createAccount),
    
    ### http://127.0.0.1:8000/member/user_check
    path('user_check/', views.getUserCheck),
    
    ### http://127.0.0.1:8000/member/login_logout
    path('login_logout/', views.login_logout),
    
    ### http://127.0.0.1:8000/member/login
    path('login/', views.login),
    
    ### http://127.0.0.1:8000/member/logout
    path('logout/', views.logout),
    
    ### http://127.0.0.1:8000/member/mypage
    path('mypage/', views.userModify),
    
    ### http://127.0.0.1:8000/member/set_pw
    path('set_pw/', views.setPassword),
    
    ### http://127.0.0.1:8000/member/modify
    path('modify/', views.modifyPW),
    
    ### http://127.0.0.1:8000/member/set_mypage
    path('set_mypage/', views.modifyMypage),
    
    ### http://127.0.0.1:8000/member/withdraw
    path('withdraw/', views.withdraw),

]
