from django.conf.urls import patterns, url

from SpaceApp import views

urlpatterns = patterns('',
    url(r'^$', views.home, name='home'),
)
