from django.urls import path

from crons.views import add_view, index

urlpatterns = [
    path('', index, name='index'),
    path('add/', add_view, name='add'),
]
