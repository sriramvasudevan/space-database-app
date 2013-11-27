from django.shortcuts import render_to_response
from django.http import HttpResponseRedirect
from django.db.models import Count

from SpaceApp.models import *
from SpaceApp.forms import *

def home(request):
    astronomers = Astronomer.objects.all()
    astronauts = Astronaut.objects.all()
    return render_to_response('home.html', locals())

def astronomerDetails(request, astroid):
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    if astroid:
        try:
            astros = Astronomer.objects.get(pk=astroid)
            astros = [astros]
            exists = True
        except Astronomer.DoesNotExist:
            astros = Astronomer.objects.all()
        return render_to_response('astronomers.html', locals())
    astros = Astronomer.objects.all()
    return render_to_response('astronomers.html', locals())

def astronautDetails(request, astroid):
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    if astroid:
        try:
            astros = Astronaut.objects.get(pk=astroid)
            astros = [astros]
            exists = True
        except Astronaut.DoesNotExist:
            astros = Astronaut.objects.all()
        return render_to_response('astronauts.html', locals())
    astros = Astronaut.objects.all()
    return render_to_response('astronauts.html', locals())

def astronomerEdit(request, astroid):
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    if request.method == 'POST':
        if astroid:
            try:
                form = AstronomerForm(request.POST, instance=Astronomer.objects.get(pk=astroid))
            except Astronomer.DoesNotExist:
                form = Astronomerform(request.POST)
        else:
            form = AstronomerForm(request.POST)
        if form.is_valid():
            new_astro = form.save()
            updated = True
        else:
            return render_to_response('editastro.html', locals())
    if astroid:
        try:
            form = AstronomerForm(instance=Astronomer.objects.get(pk=astroid))
        except Astronomer.DoesNotExist:
            form = AstronomerForm()
    else:
        form = AstronautForm()
    return render_to_response('editastro.html', locals())

def astronautEdit(request, astroid):
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    if request.method == 'POST':
        if astroid:
            try:
                form = AstronautForm(request.POST, instance=Astronaut.objects.get(pk=astroid))
            except Astronaut.DoesNotExist:
                form = Astronautform(request.POST)
        else:
            form = AstronautForm(request.POST)
        if form.is_valid():
            new_astro = form.save()
            updated = True
        else:
            return render_to_response('editastro.html', locals())
    if astroid:
        try:
            form = AstronautForm(instance=Astronaut.objects.get(pk=astroid))
        except Astronaut.DoesNotExist:
            form = AstronautForm()
    else:
        form = AstronautForm()
    return render_to_response('editastro.html', locals())

def astronomerDel(request, astroid):
    try:
        delobj = Astronomer.objects.get(pk=astroid)
        delobj.delete()
        deleted = True
    except Astronomer.DoesNotExist:
        pass
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    return render_to_response('home.html', locals())

def astronautDel(request, astroid):
    try:
        delobj = Astronaut.objects.get(pk=astroid)
        delobj.delete()
        deleted = True
    except Astronaut.DoesNotExist:
        pass
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    return render_to_response('home.html', locals())
    
def univRange(request):
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    if request.method == 'POST':
        fromyear = request.POST.get('from')
        toyear = request.POST.get('to')
        univ = request.POST.get('univ')
        if univ:
            edudetails = Educationastronomer.objects.filter(university=univ, year__range=[fromyear, toyear])
            edudetails2 = Educationastronaut.objects.filter(university=univ, year__range=[fromyear, toyear])
        else:
            edudetails = Educationastronomer.objects.filter(year__range=[fromyear, toyear])
            edudetails2 = Educationastronaut.objects.filter(year__range=[fromyear, toyear])
        edudetails = list(edudetails)
        edudetails2 = list(edudetails2)
        edudetails.extend(edudetails2)
    return render_to_response('univs.html', locals())

def univEdit(request, univid):
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    if request.method == 'POST':
        form = EducationastronomerForm(request.POST)
        if form.is_valid():
            newdata = form.save()
            saved = True
    form = EducationastronomerForm()
    return render_to_response('univedit.html', locals())

def spaceflightData(request, flightid):
    astronauts = Astronaut.objects.all()
    astronomers = Astronomer.objects.all()
    try:
        flight = Spaceflight.objects.get(pk=flightid)
        print dir(flight)
    except Spaceflight.DoesNotExist:
        missing = True
    return render_to_response('spaceflight.html', locals())

