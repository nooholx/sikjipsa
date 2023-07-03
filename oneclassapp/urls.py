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
    #플라워레슨가기 http://127.0.0.1:8000/oneclass/onclassapp/
    path('onclassapp/', views.getonlineList),
    #플라워레슨가기 http://127.0.0.1:8000/oneclass/onclassapp2/
    path('onclassapp2/', views.getonlineList2),
    #플라워레슨가기 http://127.0.0.1:8000/oneclass/onclassapp3/
    path('onclassapp3/', views.getonlineList3),
    #테라리움가기http://127.0.0.1:8000/oneclass/onclassapp4/
    path('onclassapp4/', views.getonlineList4),
    
    ### http://127.0.0.1:8000/oneclass/offclassapp/
    path('offclassapp/', views.getofflineList),
    
]
