from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf.urls import patterns
from sex.views import *

from django.conf.urls import url
from django.contrib import admin


urlpatterns = [


    url(r'^admin/', admin.site.urls),
    url(r'^api-token-auth/', 'jwt_auth.views.obtain_jwt_token'),

    #Hotels

    url(r'^distritos/$', 'sex.views.distritos'), # GET POST
 	url(r'^registra/$', 'sex.views.registra'), # GET POST
 	url(r'^perfil/$', Perfil.as_view()), # GET POST
 	url(r'^kine/$', Kinesiologa.as_view()), # GET POST
 	url(r'^kinelist/$', 'sex.views.kines'), # GET POST
 	url(r'^uploadphoto/$', 'sex.views.uploadphoto'), # GET POST


]