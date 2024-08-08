#!/bin/bash

export $(cat ~/aws-django-redis/.env | xargs)
exec celery -A my_schedular worker --loglevel=INFO
