#!/bin/bash
sudo apt update
sudo apt install python3 python3-pip python3-venv -y

pip install -r requierments.txt

pytest --cov frontEnd/