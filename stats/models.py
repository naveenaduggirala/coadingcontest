from django.db import models
from codingcontest.models import *

# Create your models here.
class ViewStats(models.Model):
	challenge = models.ForeignKey(Challenge,blank=True,null=True)
	total_views = models.IntegerField(blank=True,null=True)
	total_unique_views = models.IntegerField(blank=True,null=True)

class SubmissionStats(models.Model):
	challenge = models.ForeignKey(Challenge,blank=True,null=True)
	total_submission = models.IntegerField(blank=True,null=True)
	total_accepted_submissions = models.IntegerField(blank=True,null=True)
