from django.shortcuts import render

from django.http import HttpResponse
from .models import PendingOrders


def index(request):
    pending = PendingOrders.objects.all().filter(orderstatus='Pending')
    print(pending)
    return HttpResponse("Hello, world. You're at the polls index.")
