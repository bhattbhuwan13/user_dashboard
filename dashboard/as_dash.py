# # -*- coding: utf-8 -*-

# # https://bitbucket.org/m_c_/sample-dash/src/1e2cfabf58ee0493bc5af73260fb2615de42c8d6/app/as_dash.py?at=master&fileviewer=file-view-default

# import dash
# import dash_core_components as dcc
# import dash_html_components as html

# import colorlover as cl
# import datetime as dt
# import pandas as pd
# from pandas_datareader.data import DataReader


# colorscale = cl.scales['9']['qual']['Paired']

# df_symbol = pd.read_csv('tickers.csv')


# def dispatcher(request):
#     '''
#     Main function
#     @param request: Request object
#     '''

#     app = _create_app()
#     # app.run_server()
#     params = {
#         'data': request.body,
#         'method': request.method,
#         'content_type': request.content_type
#     }
#     with app.server.test_request_context(request.path, **params):
#         app.server.preprocess_request()
#         try:
#             response = app.server.full_dispatch_request()
#         except Exception as e:
#             response = app.server.make_response(app.server.handle_exception(e))
#             print("i am inside except")

#         print("returning from dispatcher")
#         print(response.get_data())
#         return response.get_data()


# def _create_app():
#     ''' Creates dash application '''

#     print("I am on create app")

#     app = dash.Dash(csrf_protect=False)
#     app.layout = html.Div(
#         [
#             html.H1('create random number', id='button1'),
#             dcc.Graph(
#                 id='example',
#                 figure={
#                     'data': [
#                         {'x': [1, 2, 3, 4, 5], 'y': [9, 6, 2, 1, 5],
#                          'type': 'line', 'name': 'Boats'},
#                         {'x': [1, 2, 3, 4, 5], 'y': [8, 7, 2, 7, 3],
#                          'type': 'bar', 'name': 'Cars'},
#                     ],
#                     'layout': {
#                         'title': 'Basic Dash Example'
#                     }
#                 }
#             )
#         ], className="container"
#     )
#     print(app)
#     return app


# if __name__ == '__main__':
#     app = _create_app()
#     app.run_server()
