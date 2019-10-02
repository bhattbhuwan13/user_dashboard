from django.urls import path
from django.conf.urls import url
from . import views

app_name = 'dashboard'
urlpatterns = [
    path(r'', views.index, name='index'),
    path(r'orderdetail', views.order_detail, name='detail'),
]
