# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
from __future__ import unicode_literals

from django.db import models

class Astronaut(models.Model):
    firstname = models.CharField(max_length=15L, db_column='firstName') # Field name made lowercase.
    middlename = models.CharField(max_length=15L, db_column='middleName', blank=True) # Field name made lowercase.
    lastname = models.CharField(max_length=15L, db_column='lastName') # Field name made lowercase.
    country = models.CharField(max_length=30L, blank=True)
    dob = models.DateField(null=True, blank=True)
    class Meta:
        db_table = 'Astronaut'
    def __unicode__(self):
        return "%s %s"%(self.firstname, self.lastname)

class Astronomer(models.Model):
    firstname = models.CharField(max_length=15L, db_column='firstName', blank=True) # Field name made lowercase.
    middlename = models.CharField(max_length=15L, db_column='middleName', blank=True) # Field name made lowercase.
    lastname = models.CharField(max_length=15L, db_column='lastName', blank=True) # Field name made lowercase.
    country = models.CharField(max_length=30L, blank=True)
    dob = models.DateField(null=True, blank=True)
    class Meta:
        db_table = 'Astronomer'
    def __unicode__(self):
        return "%s %s"%(self.firstname, self.lastname)

class Comet(models.Model):
    name = models.CharField(max_length=30L, primary_key=True)
    approachperiod = models.FloatField(null=True, db_column='approachPeriod', blank=True) # Field name made lowercase.
    orbitalvelocity = models.FloatField(null=True, db_column='orbitalVelocity', blank=True) # Field name made lowercase.
    discoverer = models.ForeignKey(Astronomer, null=True, db_column='astronomerId', blank=True) # Field name made lowercase.
    class Meta:
        db_table = 'Comet'
    def __unicode__(self):
        return self.name

class Galaxy(models.Model):
    name = models.CharField(max_length=30L, primary_key=True)
    galaxytype = models.CharField(max_length=20L, db_column='type', blank=True)
    size = models.CharField(max_length=30L, blank=True)
    distfrommilkyway = models.FloatField(null=True, db_column='distFromMilkyWay', blank=True) # Field name made lowercase.
    discoverer = models.ForeignKey(Astronomer, null=True, db_column='astronomerId', blank=True) # Field name made lowercase.
    class Meta:
        db_table = 'Galaxy'
    def __unicode__(self):
        return self.name

class Gasesinatmosphere(models.Model):
    planet = models.ForeignKey('Planet', db_column='planetName') # Field name made lowercase.
    gas = models.CharField(max_length=30L)
    class Meta:
        db_table = 'GasesInAtmosphere'
    def __unicode__(self):
        return "(%s, %s)"%(self.planet, self.gas)

class Moon(models.Model):
    name = models.CharField(max_length=30L, primary_key=True)
    radius = models.FloatField(null=True, blank=True)
    waterpresent = models.NullBooleanField(null=True, db_column='waterPresent', blank=True) # Field name made lowercase.
    mass = models.FloatField(null=True, blank=True)
    density = models.FloatField(null=True, blank=True)
    gravity = models.FloatField(null=True, blank=True)
    rotationperiod = models.FloatField(null=True, db_column='rotationPeriod', blank=True) # Field name made lowercase.
    temperature = models.FloatField(null=True, blank=True)
    planet = models.ForeignKey('Planet', null=True, db_column='planetName', blank=True) # Field name made lowercase.
    revolutionperiod = models.FloatField(null=True, db_column='revolutionPeriod', blank=True) # Field name made lowercase.
    discoverer = models.ForeignKey(Astronomer, null=True, db_column='astronomerId', blank=True) # Field name made lowercase.
    class Meta:
        db_table = 'Moon'
    def __unicode__(self):
        return self.name

class Planet(models.Model):
    name = models.CharField(max_length=30L, primary_key=True)
    radius = models.FloatField(null=True, blank=True)
    waterpresent = models.NullBooleanField(null=True, db_column='waterPresent', blank=True) # Field name made lowercase.
    mass = models.FloatField(null=True, blank=True)
    density = models.FloatField(null=True, blank=True)
    gravity = models.FloatField(null=True, blank=True)
    rotationperiod = models.FloatField(null=True, db_column='rotationPeriod', blank=True) # Field name made lowercase.
    temperature = models.FloatField(null=True, blank=True)
    star = models.ForeignKey('Star', null=True, db_column='starName', blank=True) # Field name made lowercase.
    revolutionperiod = models.FloatField(null=True, db_column='revolutionPeriod', blank=True) # Field name made lowercase.
    planetsystem = models.CharField(max_length=30L, db_column='planetSystem', blank=True) # Field name made lowercase.
    discoverer = models.ForeignKey(Astronomer, null=True, db_column='astronomerId', blank=True) # Field name made lowercase.
    class Meta:
        db_table = 'Planet'
    def __unicode__(self):
        return self.name

class Satellite(models.Model):
    name = models.CharField(max_length=30L, primary_key=True)
    country = models.CharField(max_length=30L, blank=True)
    launchyear = models.IntegerField(db_column='launchYear', blank=True) # Field name made lowercase.
    revolutionperiod = models.FloatField(null=True, db_column='revolutionPeriod', blank=True) # Field name made lowercase.
    satellitetype = models.CharField(max_length=30L, db_column='type', blank=True)
    launchvehicle = models.CharField(max_length=30L, db_column='launchVehicle', blank=True) # Field name made lowercase.
    planet = models.ManyToManyField(Planet, through='Forplanet')
    moon = models.ManyToManyField(Moon, through='Formoon')
    class Meta:
        db_table = 'Satellite'
    def __unicode__(self):
        return self.name

class Spaceflight(models.Model):
    country = models.CharField(max_length=30L, blank=True)
    year = models.IntegerField()
    launchvehicle = models.CharField(max_length=30L, db_column='launchVehicle') # Field name made lowercase.
    satellite = models.CharField(max_length=30L, db_column='satelliteName', blank=True) # Field name made lowercase.
    moon = models.ForeignKey(Moon, null=True, db_column='moonName', blank=True) # Field name made lowercase.
    leader = models.ForeignKey(Astronaut, null=True, related_name='leaderid', db_column='leaderId', blank=True) # Field name made lowercase.
    nextflight = models.ForeignKey('self', null=True, db_column='nextFlight', blank=True) # Field name made lowercase.
    member = models.ManyToManyField(Astronaut, related_name='members', through='Memberof')
    class Meta:
        db_table = 'SpaceFlight'
    def __unicode__(self):
        return "%s - %s"%(self.launchvehicle, self.year)

class Star(models.Model):
    name = models.CharField(max_length=30L, primary_key=True)
    colour = models.CharField(max_length=15L, blank=True)
    spectralclass = models.CharField(max_length=1L, db_column='spectralClass', blank=True) # Field name made lowercase.
    mass = models.FloatField(null=True, blank=True)
    radius = models.FloatField(null=True, blank=True)
    temperature = models.FloatField(null=True, blank=True)
    galaxy = models.ForeignKey(Galaxy, null=True, db_column='galaxyName', blank=True) # Field name made lowercase.
    discoverer = models.ForeignKey(Astronomer, null=True, db_column='astronomerId', blank=True) # Field name made lowercase.
    secondarystar = models.ForeignKey('self', null=True, db_column='secondaryStar', blank=True) # Field name made lowercase.
    class Meta:
        db_table = 'Star'
    def __unicode__(self):
        return self.name

class Educationastronaut(models.Model):
    university = models.CharField(max_length=30L)
    year = models.IntegerField()
    astronaut = models.ForeignKey(Astronaut, null=True, db_column='astronautId', blank=True) # Field name made lowercase.
    class Meta:
        db_table = 'educationAstronaut'
    def __unicode__(self):
        return "%s - %s, %s"%(self.astronaut, self.university, self.year)

class Educationastronomer(models.Model):
    university = models.CharField(max_length=30L)
    year = models.IntegerField()
    astronomer = models.ForeignKey(Astronomer, null=True, db_column='astronomerId', blank=True) # Field name made lowercase.
    class Meta:
        db_table = 'educationAstronomer'
    def __unicode__(self):
        return "%s - %s, %s"%(self.astronomer, self.university, self.year)

class Formoon(models.Model):
    satellite = models.ForeignKey('Satellite', db_column='satelliteName') # Field name made lowercase.
    moon = models.ForeignKey('Moon', db_column='moonName') # Field name made lowercase.
    class Meta:
        db_table = 'ForMoon'
    def __unicode__(self):
        return "(%s, %s)"%(self.satellite, self.moon)

class Forplanet(models.Model):
    satellite = models.ForeignKey('Satellite', db_column='SatelliteName') # Field name made lowercase.
    planet = models.ForeignKey('Planet', db_column='PlanetName') # Field name made lowercase.
    class Meta:
        db_table = 'ForPlanet'
    def __unicode__(self):
        return "(%s, %s)"%(self.satellite, self.planet)

class Memberof(models.Model):
    astronaut = models.ForeignKey(Astronaut, db_column='astronautId') # Field name made lowercase.
    spaceflight = models.ForeignKey('Spaceflight', db_column='spaceFlight') # Field name made lowercase.
    class Meta:
        db_table = 'MemberOf'
    def __unicode__(self):
        return "(%s, %s)"%(self.astronaut, self.spaceflight)

