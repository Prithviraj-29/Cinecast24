from django.db import models

# Create your models here.
class detail():
    userid:int
    fname:str
    lname:str
    email:str
    phn:str
    profession:str
    
class job():
    jobid:int
    jobtitle:str
    description:str
    userid:int