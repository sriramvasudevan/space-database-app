from django.shortcuts import render_to_response

from SpaceApp.models import *

def home(request):
    astros = Astronomer.objects.all()
    return render_to_response('index.html', locals())
