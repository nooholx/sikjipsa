from django.contrib import admin
from django.urls import path
from storyapp import views

urlpatterns = [
    path('test/',views.getMemberList),
    
    path('log_chk/',views.PostLoginCheck),
    path('main/',views.StoryMain),
    path('main_up/',views.goCount),
    
    path('post/',views.StoryPost),
    path('view/',views.StoryView),
    path('post_insert/',views.setFileManagerInsert),
    
    path('update_form/',views.UpdateForm),
    path('post_update/',views.PostUpdate),
    
    path('post_delete/',views.StoryDel),
    
    path('main_s/',views.searchMain),
    
    path('cook/',views.StoryCook),
    path('plant/',views.StoryPlant),    
]
