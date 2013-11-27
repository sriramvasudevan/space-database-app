from django.forms import ModelForm, DateField, CharField, Textarea
from SpaceApp.models import *

class AstronautForm(ModelForm):
    dob = DateField(label = 'Date of Birth')
    class Meta:
        model = Astronomer

class AstronautForm(ModelForm):
    dob = DateField(label = 'Date of Birth')
    class Meta:
        model = Astronaut
        
class EducationastronomerForm(ModelForm):
    class Meta:
        model = Educationastronomer

