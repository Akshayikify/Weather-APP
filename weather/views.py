from django.shortcuts import render
import requests
import datetime
from django.contrib import messages

def home(request):
    if request.method == "POST":
        city = request.POST.get('city')
    else:
        city = 'Bangalore'

    url = f'https://api.openweathermap.org/data/2.5/weather?q={city}&appid=2abe98d1993f075c2dfa984376edb74b'
    PARAMS = {'units': 'metric'}
    try:
        data = requests.get(url, params=PARAMS).json()

        description = data['weather'][0]['description']
        icon = data['weather'][0]['icon']
        temp = data['main']['temp']
        day = datetime.date.today()

        context = {
            'description': description,
            'icon': icon,
            'temp': temp,
            'day': day,
            'city': city
        }

    except Exception:
        messages.error(request, "City not found")

        context = {
            'description': "Clear Sky",
            'temp': None,
            'icon': '01d',
            'day': datetime.date.today(),
        }

    return render(request, 'index.html', context)