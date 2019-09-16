from django.shortcuts import render

from django.http import HttpResponse
from .models import PendingOrders

from django.views.decorators.csrf import csrf_exempt


import pandas as pd
import json
# from .as_dash import dispatcher


def index(request):
    all_objects = PendingOrders.objects.all().values()

    print("All objects are :")
    df = pd.DataFrame(all_objects)

    pending_orders = len(df[df['orderstatus'] == 'Pending'])
    executing_orders = len(df[df['orderstatus'] == 'Executing'])
    user = df['hostname'][1]

    new_df = df[['customer', 'ordercode', 'orderstatus', 'salesman']].copy()
    new_df['order_code'] = df['ordercode']
    new_df['order_status'] = df['orderstatus']
    d = new_df.to_dict(orient='records')
    json_obj = d
    # json_obj = json.dumps(d)
    # json_obj = "'" + json_obj + "'"

    # json_obj = new_df.to_json(orient='records')

    # json_obj = json.loads(json_obj)

    context = {
        "pending": pending_orders,
        "executing": executing_orders,
        "hostname": user,
        "length": len(df['ordercode']),
        "json_obj": json_obj,
    }

    print(json_obj)
    print("The type of json_obj is {}".format(type(json_obj)))
    return render(request, 'dashboard_index.html', context=context)


### dash ###

# def dash(request, *kwargs):
#     print("Running dash")
#     print(dispatcher(request))
#     return HttpResponse(dispatcher(request))


# @csrf_exempt
# def dash_ajax(request):
#     return HttpResponse(dispatcher(request), content_type='application/json')
