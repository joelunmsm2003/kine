from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponse
from django.contrib.auth.models import Group, User
from jwt_auth.compat import json
from jwt_auth.mixins import JSONWebTokenAuthMixin
from django.template import RequestContext
import simplejson
from django.views.decorators.csrf import csrf_exempt
import xlrd
from sex.models import *
from PIL import Image
from resizeimage import resizeimage
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
import time
import os
from datetime import datetime,timedelta,date
import os.path
import requests
import smtplib
from email.mime.text import MIMEText
from kine.settings import *
import datetime
from django.db.models import Max, Min
from django.contrib.auth import authenticate, login

def ValuesQuerySetToDict(vqs):

    return [item for item in vqs]



class JSONResponse(HttpResponse):
    """
    An HttpResponse that renders its content into JSON.
    """
    def __init__(self, data, **kwargs):
        content = JSONRenderer().render(data)
        kwargs['content_type'] = 'application/json'
        super(JSONResponse, self).__init__(content, **kwargs)

# Create your views here.


class Kinesiologa(JSONWebTokenAuthMixin, View):

    def post(self, request):

        data =  json.loads(request.body)

        print 'kines...',data

        id=request.user.id

        phone = data['phone']
        name = data['name']
        distrito =data['distrito']['id']
        photo = ''
        #direccion = data['direccion']

        for d in data:

            if d=='photo':

                photo = data['photo']

        descripcion = data['descripcion']

        precio=data['precio']

        '''
        user = AuthUser.objects.get(id=id)
        user.first_name = name
        user.phone = phone
        user.save()

        '''


        # caption = request.FILES['file']

        # print caption



        Kines(user_id=id,precio=precio,description=descripcion,phone=phone,name=name,distrito_id=distrito).save()

        id_kine = Kines.objects.all().values('id').order_by('-id')[0]['id']

        print 'id_kine',id_kine


        user = AuthUser.objects.get(id=id)
        user.first_name = name
        user.phone = phone
        user.save()


        data_json = simplejson.dumps(id_kine)

        return HttpResponse(data_json, content_type="application/json")


@csrf_exempt
def kines(request):

    if request.method == 'GET':

        data = Kines.objects.all().values('id','distrito__name','name','phone','direccion','description','photo','precio','user_id').order_by('-id')

        for i in range(len(data)):

            data[i]['min'] = Kines.objects.all().aggregate(Min('precio'))['precio__min']
            data[i]['max'] = Kines.objects.all().aggregate(Max('precio'))['precio__max']

        data = ValuesQuerySetToDict(data)

        data_json = simplejson.dumps(data)

        return HttpResponse(data_json, content_type="application/json")

@csrf_exempt
def uploadphoto(request):

    if request.method == 'POST':


        caption = request.FILES['file']

        id = request.POST['id']

        print 'photo...',id

        kines = Kines.objects.get(id=id)
        kines.photo = caption
        kines.save()

        caption = str(Kines.objects.get(id=id).photo)

        fd_img = open(caption, 'r')

        img = Image.open(fd_img)

        width, height = img.size



        print 'longitudes...',width, height


        img = resizeimage.resize_cover(img, [500, 700])

        img.save(caption, img.format)

        fd_img.close()

  
        

        data_json = simplejson.dumps('data')

        return HttpResponse(data_json, content_type="application/json")






@csrf_exempt
def distritos(request):

    if request.method == 'GET':

        data = Distrito.objects.all().values('id','name')

        data = ValuesQuerySetToDict(data)

        data = simplejson.dumps(data)

        return HttpResponse(data, content_type="application/json")


@csrf_exempt
def registra(request):


    if request.method == 'POST':

        data =  json.loads(request.body)

        #{u'username': u'22admin', u'password': u'rosa0000'}

        username = data['username']

        password = data['password']

        user = authenticate(username=username, password=password)

        userdata={'username':username,'password':password}



        if user is not None:

            if user.is_active:

                login(request, user)

                

                data_json = simplejson.dumps(userdata)

                return HttpResponse(data_json, content_type="application/json")

        else:  

            user = User.objects.create_user(username,username, password)

            if username.find('@') == -1:

                user.phone = username
                user.save()


            data_json = simplejson.dumps(userdata)

    
            return HttpResponse(data_json, content_type="application/json")


class Perfil(JSONWebTokenAuthMixin, View):

    def get(self, request):

        id=request.user.id

        user = AuthUser.objects.filter(id=id).values('id','first_name','username','email','phone')

        data = ValuesQuerySetToDict(user)

        data = simplejson.dumps(data)

        return HttpResponse(data, content_type="application/json")



