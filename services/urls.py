from django.conf.urls import  include, url
from rest_framework.urlpatterns import format_suffix_patterns
import services.contset_api_views as contset_api_views


urlpatterns = [
    url(r'^contest/create$', contset_api_views.ContestCreateViewSet.as_view(), name='contest_create'),
    url(r'^college/create$', contset_api_views.CollegeCreateViewSet.as_view(), name='college_create'),
    url(r'^challenge/create$', contset_api_views.ChallengeCreateViewSet.as_view(), name='challenge_create'),

    url(r'^viewstats/create$', contset_api_views.ViewStatsViewSet.as_view(), name='view_stats'),
    url(r'^submissionstats/create$', contset_api_views.SubmissionStatsViewSet.as_view(), name='submission_stats'),




]
urlpatterns = format_suffix_patterns(urlpatterns)

