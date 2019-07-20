from django.db import models

# Create your models here.


class PendingOrders(models.Model):
    id = models.AutoField(primary_key=True)
    ordercode = models.IntegerField()
    customer = models.CharField(max_length=255)
    orderstatus = models.CharField(max_length=50)
    ordershipmentstatus = models.CharField(max_length=40)
    truck = models.CharField(max_length=50)
    areacode = models.IntegerField()
    salesman = models.CharField(max_length=100)
    hostname = models.CharField(max_length=100, default='0000')
