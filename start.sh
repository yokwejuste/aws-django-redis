#!/bin/bash

source /home/ubuntu/aws-django-redis/venv/bin/activate
exec gunicorn --workers 3 --bind 0.0.0.0:8000 my_schedular.wsgi:application
