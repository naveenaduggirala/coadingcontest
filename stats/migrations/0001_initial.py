# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('codingcontest', '0003_auto_20181117_1822'),
    ]

    operations = [
        migrations.CreateModel(
            name='SubmissionStats',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('total_submission', models.IntegerField(null=True, blank=True)),
                ('total_accepted_submissions', models.IntegerField(null=True, blank=True)),
                ('challenge', models.ForeignKey(blank=True, to='codingcontest.Challenge', null=True)),
            ],
        ),
        migrations.CreateModel(
            name='ViewStats',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('total_views', models.IntegerField(null=True, blank=True)),
                ('total_unique_views', models.IntegerField(null=True, blank=True)),
                ('challenge', models.ForeignKey(blank=True, to='codingcontest.Challenge', null=True)),
            ],
        ),
    ]
