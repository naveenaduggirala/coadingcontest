from django.http import Http404 
from rest_framework.views import APIView 
from rest_framework.response import Response 
from rest_framework import status 
from datetime import datetime, timedelta
from django.conf import settings
import traceback
import sys
import json,ast
import os
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from codingcontest.models import *
from stats.models import *
from services.serializers import ContestSerializer,CollegeSerializer,ChallengeSerializer,ViewStatsSerializer,SubmissionStatsSerializer



class ContestCreateViewSet(APIView):
	"""
	List all snippets, or create a new snippet.
	"""
	def get(self, request, format=None):
		contest = Contest.objects.all()
		serializer = ContestSerializer(contest,many=True)
		return Response(serializer.data)

	@method_decorator(csrf_exempt)
	def post(self, request, format=None):
		serializer = ContestSerializer(data=request.data)
		if serializer.is_valid():
			kwargs = {
			"id":request.data['id'],
			"contest_name":request.data['contest_name'],
			"hacker_name":request.data['hacker_name'],
			"hacker_id":request.data['hacker_id']
			}
			contest_obj = Contest.objects.create(**kwargs)
			context_data = {"success" : True, "data" :{"contest_obj": contest_obj}}
			return Response(context_data, status=status.HTTP_201_CREATED)
	  
   
		else:
			errors_list =  format_serializer_errors(**serializer.errors)
			context_data = {"success" : False, "errors" : {"message": "Validation Error" ,  "errors_list" : errors_list}}
			return Response(context_data,status=status.HTTP_201_CREATED)


class CollegeCreateViewSet(APIView):
	"""
	List all snippets, or create a new snippet.
	"""

	@method_decorator(csrf_exempt)
	def post(self, request, format=None):
		serializer = ChallengeSerializer(data=request.data)
		if serializer.is_valid():
			kwargs = {
			"id":request.data['id'],
			"name":request.data['college_name'],
			}
			context_obj = Contest.objects.get(id=request.data['contest'])
			kwargs.update({"contest":context_obj})
			college_obj = College.objects.create(**kwargs)
			context_data = {"success" : True, "data" :{"contest_obj": college_obj}}
			return Response(context_data, status=status.HTTP_201_CREATED)

		else:
			errors_list =  format_serializer_errors(**serializer.errors)
			context_data = {"success" : False, "errors" : {"message": "Validation Error" ,  "errors_list" : errors_list}}
			return Response(context_data,status=status.HTTP_201_CREATED)


class ChallengeCreateViewSet(APIView):
	@method_decorator(csrf_exempt)
	def post(self, request, format=None):
		serializer = CollegeSerializer(data=request.data)
		if serializer.is_valid():
			kwargs = {
			"id":request.data['id'],
			}
			context_obj = Contest.objects.get(id=request.data['contest'])
			college_obj = College.objects.get(id=request.data['college'])
			kwargs.update({"contest":context_obj,"college":college_obj})
			challenge_obj = Challenge.objects.create(**kwargs)
			context_data = {"success" : True, "data" :{"contest_obj": college_obj}}
			return Response(context_data, status=status.HTTP_201_CREATED)

		else:
			errors_list =  format_serializer_errors(**serializer.errors)
			context_data = {"success" : False, "errors" : {"message": "Validation Error" ,  "errors_list" : errors_list}}
			return Response(context_data,status=status.HTTP_201_CREATED)



class ViewStatsViewSet(APIView):
	@method_decorator(csrf_exempt)
	def post(self, request, format=None):
		serializer = ViewStatsSerializer(data=request.data)
		if serializer.is_valid():
			kwargs = {
			"id":request.data['id'],
			"total_views":request.data['total_views'],
			"total_unique_views":request.data['total_unique_views']
			}
			challenge_obj = Challenge.objects.get(id=request.data['challenge_id'])
			kwargs.update({"challenge":challenge_obj})
			viewstats_obj = ViewStats.objects.create(**kwargs)
			context_data = {"success" : True, "data" :{"viewstats": viewstats_obj}}
			return Response(context_data, status=status.HTTP_201_CREATED)

		else:
			errors_list =  format_serializer_errors(**serializer.errors)
			context_data = {"success" : False, "errors" : {"message": "Validation Error" ,  "errors_list" : errors_list}}
			return Response(context_data,status=status.HTTP_201_CREATED)

class SubmissionStatsViewSet(APIView):
	@method_decorator(csrf_exempt)
	def post(self, request, format=None):
		serializer = SubmissionStatsSerializer(data=request.data)
		if serializer.is_valid():
			kwargs = {
			"id":request.data['id'],
			"total_submission":request.data['total_submission'],
			"total_accepted_submissions":request.data['total_accepted_submissions']
			}
			challenge_obj = Challenge.objects.get(id=request.data['challenge_id'])
			kwargs.update({"challenge":challenge_obj})
			submissionstats_obj = SubmissionStats.objects.create(**kwargs)
			context_data = {"success" : True, "data" :{"submissionstats_obj": submissionstats_obj}}
			return Response(context_data, status=status.HTTP_201_CREATED)

		else:
			errors_list =  format_serializer_errors(**serializer.errors)
			context_data = {"success" : False, "errors" : {"message": "Validation Error" ,  "errors_list" : errors_list}}
			return Response(context_data,status=status.HTTP_201_CREATED)

