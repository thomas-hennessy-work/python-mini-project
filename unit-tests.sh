#!/bin/bash
sudo apt install python3 python3-pip

pip install -r requierments.txt

pytest --cov frontEnd/