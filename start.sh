#!/bin/bash

source /home/ubuntu/aws-django-redis/venv/bin/activate
exec gunicorn --workers 3 --bind unix:/home/ubuntu/aws-django-redis/aws-django-redis.sock my_schedular.wsgi:application
