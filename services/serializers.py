from rest_framework import serializers

class ContestSerializer(serializers.Serializer):
	contest_name = serializers.CharField(max_length=60)
	hacker_name = serializers.CharField(max_length=60)
	hacker_id = serializers.CharField(max_length=60)

class CollegeSerializer(serializers.Serializer):
	contest = serializers.CharField(max_length=60)

class ChallengeSerializer(serializers.Serializer):
	name = serializers.CharField(max_length=60)

class ViewStatsSerializer(serializers.Serializer):
	total_views = serializers.CharField(max_length=60)
	total_unique_views = serializers.CharField(max_length=60)

class SubmissionStatsSerializer(serializers.Serializer):
	total_submission = serializers.CharField(max_length=60)
	total_accepted_submissions = serializers.CharField(max_length=60)



