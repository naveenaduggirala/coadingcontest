from django.db import models

# Create your models here.

class Contest(models.Model):
	contest_name = models.CharField(max_length=100,blank=True,null=True)
	hacker_name = models.CharField(max_length=100,blank=True,null=True)
	hacker_id = models.IntegerField(blank=True,null=True)

	def __str__(self):
		return self.name

class College(models.Model):
	name = models.CharField(max_length=100,blank=True,null=True)
	contest = models.ForeignKey(Contest,blank=True,null=True)

	def __str__(self):
		return self.name

class Challenge(models.Model):
	name = models.CharField(max_length=100,blank=True,null=True)
	college = models.ForeignKey(College,blank=True,null=True)
	contest = models.ForeignKey(Contest,blank=True,null=True) 

	def __str__(self):
		return self.name


