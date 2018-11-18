# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Challenge',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100, null=True, blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='College',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100, null=True, blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='Contest',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100, null=True, blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='Hacker',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100, null=True, blank=True)),
                ('contest', models.ForeignKey(blank=True, to='codingcontest.Contest', null=True)),
            ],
        ),
        migrations.AddField(
            model_name='college',
            name='contest',
            field=models.ForeignKey(blank=True, to='codingcontest.Contest', null=True),
        ),
        migrations.AddField(
            model_name='challenge',
            name='college',
            field=models.ForeignKey(blank=True, to='codingcontest.College', null=True),
        ),
        migrations.AddField(
            model_name='challenge',
            name='contest',
            field=models.ForeignKey(blank=True, to='codingcontest.Contest', null=True),
        ),
    ]
