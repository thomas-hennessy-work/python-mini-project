#! /bin/bash#
gunicorn --workers 2 --chdir=backEnd --bind=0.0.0.0:5001 app:appi
