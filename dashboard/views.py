from django.http import HttpRequest
from django.shortcuts import render
from django.db import connection
from django.http import HttpResponse
from .models import PendingOrders
import sqlalchemy as sa

from django.views.decorators.csrf import csrf_exempt


import pandas as pd
import json
# from .as_dash import dispatcher


def index(request):
    # engine = sa.create_engine(
    #     'mssql+pyodbc://test:tset21"!@aab.database.windows.net/ReportsAAB?driver=ODBC+Driver+13+for+SQL+Server"')
    cursor = connection.cursor()
    # sql_string = '''SELECT * from OrderInfo'''
    host = request.META['REMOTE_ADDR']

    # print(request.META)
    #host = request.META
    #host = request.get_host()

    print("#############################")
    print(host)
    print("#############################")
    sql_string = '''exec sp_getAABPendingCustomerOrders "{}"'''.format(host)
    print("The sql string is {}".format(sql_string))
    # all_objects = cursor.execute(sql_string)
    df = pd.read_sql_query(sql_string, connection)
    # all_objects = PendingOrders.objects.all().values()

    # df = pd.DataFrame(all_objects)
    # print(all_objects)
    print(df.columns)
    # df.columns = all_objects.keys()
    # df = pd.DataFrame(all_objects)
    # df.columns = ['OrderCode', 'InputDate', 'CustCode', 'Customer', 'Memo', 'OrderStatus', 'OrderShipmentStatus',
    #               'ShipDate', 'Truck', 'AreaDescr']

    # print("The columns are: {}".df.columns)

    pending_orders = len(df[df['OrderStatus'] == 'Pending'])
    executing_orders = len(df[df['OrderStatus'] == 'Executing'])
    user = 'Hostname'

    new_df = df[['Customer', 'OrderCode', 'OrderStatus', 'AreaDescr', 'InputDate', 'OrderShipmentStatus',
                 'Truck', 'ShipDate']].copy()
    new_df['InputDate'] = new_df['InputDate'].astype(str)
    new_df['ShipDate'] = new_df['ShipDate'].astype(str)
    new_df['order_code'] = df['OrderCode']
    new_df['order_status'] = df['OrderStatus']
    d = new_df.to_dict(orient='records')
    json_obj = d
    # json_obj = json.dumps(d)
    # json_obj = "'" + json_obj + "'"

    # json_obj = new_df.to_json(orient='records')

    # json_obj = json.loads(json_obj)

    context = {
        "pending": pending_orders,
        "executing": executing_orders,
        "hostname": host,
        "length": len(df['OrderCode']),
        "json_obj": json_obj,
    }

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
