from django.shortcuts import render

from django.http import HttpResponse

# Create your views here.
# 온라인플라워
def getonlineList(request):
    
    
    return render(request,
                "oneclassapp/online/flower.html",
                {})
#온라인홈가드닝 
def getonlineList2(request):
    
    
    return render(request,
                "oneclassapp/online/gardening.html",
                {})
    
# 온라인화분갈이
def getonlineList3(request):
    
    
    return render(request,
                "oneclassapp/online/pot.html",
                {})        
    
#온라인테라리움 
def  getonlineList4(request):
    
    return render(request,
                "oneclassapp/online/terrarium.html",
                {})
      
def getofflineList(request):
    
    
    return render(request,
                "oneclassapp/offline/offlinemain.html",
                {})    
