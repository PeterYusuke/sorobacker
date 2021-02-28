from django.urls import path
from .views import home_view

urlpatterns = [

    # this is home view
    path('', home_view),
]