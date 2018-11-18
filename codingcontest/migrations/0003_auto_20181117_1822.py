# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('codingcontest', '0002_auto_20181117_1800'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contest',
            name='hacker_id',
            field=models.IntegerField(null=True, blank=True),
        ),
    ]
