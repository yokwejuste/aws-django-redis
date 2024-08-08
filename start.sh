#!/bin/bash

export $(cat ~/aws-django-redis/.env | xargs)
exec gunicorn my_schedular.wsgi:application --bind 0.0.0.0:8000
