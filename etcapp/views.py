from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request,
                    "etcapp/index.html",
                    {})


def todayFood(request):
    return render(request,
                    "etcapp/today_food.html",
                    {})
    
    
def todayPlants(request):
    return render(request,
                    "etcapp/today_plants.html",
                    {})