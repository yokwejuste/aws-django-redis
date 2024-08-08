#!/bin/bash

source /home/ubuntu/aws-django-redis/venv/bin/activate
exec celery -A my_schedular worker --loglevel=info
