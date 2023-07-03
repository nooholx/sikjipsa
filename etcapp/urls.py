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
    ### http://127.0.0.1:8000/etc/index/
    path('index/', views.index),  
    
    ### http://127.0.0.1:8000/etc/today_food/
    path('today_food/', views.todayFood),
    
    ### http://127.0.0.1:8000/etc/today_plants/
    path('today_plants/', views.todayPlants),
]
