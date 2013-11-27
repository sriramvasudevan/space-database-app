from django.conf.urls import patterns, url

from SpaceApp import views

urlpatterns = patterns('',
    url(r'^$', views.home, name='home'),
    url(r'^astronomers/(\d*)$', views.astronomerDetails, name='astronomerdetails'),
    url(r'^astronauts/(\d*)$', views.astronautDetails, name='astronautdetails'),
    url(r'^astronauts/edit/(\d*)$', views.astronautEdit, name='astronautedit'),
    url(r'^astronomers/edit/(\d*)$', views.astronomerEdit, name='astronomeredit'),
    url(r'^astronauts/delete/(\d+)$', views.astronautDel, name='astronautdel'),
    url(r'^astronomers/delete/(\d+)$', views.astronomerDel, name='astronomerdel'),
    url(r'^univs/$', views.univRange, name='univrange'),
    url(r'^univs/edit/(\d*)$', views.univEdit, name='univedit'),
    url(r'^flight/(\d+)$', views.spaceflightData, name='spaceflightdata'),
)
