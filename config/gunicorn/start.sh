#!/bin/bash

NAME="wagtail"
DJANGODIR=/var/www/wagtail
USER=heymou
GROUP=heymou
WORKERS=3
BIND=unix:/run/gunicorn.sock
DJANGO_SETTINGS_MODULE=mysite.settings.production
DJANGO_WSGI_MODULE=mysite.wsgi
LOG_LEVEL=error

cd $DJANGODIR
source venv/bin/activate

export DJANGO_SETTINGS_MODULE=$DJANGO_SETTINGS_MODULE
export PYTHONPATH=$DJANGODIR:$PYTHONPATH

exec gunicorn ${DJANGO_WSGI_MODULE}:application \
  --name $NAME \
  --workers $WORKERS \
  --user=$USER \
  --group=$GROUP \
  --bind=$BIND \
  --log-level=$LOG_LEVEL \
  --log-file=-
