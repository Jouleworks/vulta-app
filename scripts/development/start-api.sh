#!/bin/bash
echo "Running..."
#hypercorn app.asgi:application -b 0.0.0.0:8081
python manage.py runserver 0.0.0.0:8081