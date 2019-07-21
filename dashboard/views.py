from django.shortcuts import render

from django.http import HttpResponse
from .models import PendingOrders

from django.views.decorators.csrf import csrf_exempt


import pandas as pd
# from .as_dash import dispatcher


def index(request):
    all_objects = PendingOrders.objects.all().values()
    df = pd.DataFrame(all_objects)

    pending_orders = len(df[df['orderstatus'] == 'Pending'])
    executing_orders = len(df[df['orderstatus'] == 'Executing'])
    user = df['hostname'][1]

    context = {
        "pending": pending_orders,
        "executing": executing_orders,
        "hostname": user,
    }
    print(df['hostname'][1])
    return render(request, 'dashboard_index.html', context=context)


### dash ###

# def dash(request, *kwargs):
#     print("Running dash")
#     print(dispatcher(request))
#     return HttpResponse(dispatcher(request))


# @csrf_exempt
# def dash_ajax(request):
#     return HttpResponse(dispatcher(request), content_type='application/json')
