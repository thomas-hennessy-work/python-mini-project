#! /bin/bash#
gunicorn --workers 2 --chdir=frontEnd --bind=0.0.0.0:5000 app:app
