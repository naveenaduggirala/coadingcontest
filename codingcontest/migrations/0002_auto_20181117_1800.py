# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('codingcontest', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='hacker',
            name='contest',
        ),
        migrations.RenameField(
            model_name='contest',
            old_name='name',
            new_name='contest_name',
        ),
        migrations.AddField(
            model_name='contest',
            name='hacker_id',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='contest',
            name='hacker_name',
            field=models.CharField(max_length=100, null=True, blank=True),
        ),
        migrations.DeleteModel(
            name='Hacker',
        ),
    ]
