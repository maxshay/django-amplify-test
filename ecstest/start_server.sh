#!/usr/bin/env bash
python main/manage.py migrate
gunicorn ecstest.wsgi --bind 0.0.0.0:8080 --workers 3