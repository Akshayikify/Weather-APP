# Django Weather App

A simple and modern weather web application built using Django. It fetches real-time weather data using the OpenWeatherMap API and displays it through a clean and responsive user interface.

---

## Features

- Search weather by city name  
- Displays temperature in Celsius  
- Shows weather condition (description and icon)  
- Displays current date  
- Error handling for invalid city inputs  
- Responsive and modern UI  
- Optional dynamic background images based on city  

---

## Tech Stack

- Frontend: HTML, CSS  
- Backend: Django (Python)  
- API: OpenWeatherMap API  
- Other Tools: Requests library  

---

## Project Structure
```
Weather_app/
│
├── prjtmain/ # Main Django project
├── weather/ # App containing views and logic
├── templates/
│ └── index.html
├── static/
│ └── css/
│ └── style.css
├── manage.py
└── db.sqlite3

```

---

## Installation and Setup
```bash
git clone https://github.com/your-username/weather-app.git
python -m venv weather_env
source weather_env/bin/activate   # Linux/Mac
weather_env\Scripts\activate      # Windows
pip install django requests
python manage.py migrate
python manage.py runserver