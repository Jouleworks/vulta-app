#!/bin/bash
sleep 1
if [[ $VUL_CMD == "migrate" ]]; then
  python manage.py migrate
elif  [[ $VUL_CMD == "collectstatic" ]]; then
  python manage.py collectstatic --no-input
fi