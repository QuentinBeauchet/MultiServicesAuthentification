#!/usr/bin/env bash

sudo apt install bluetooth libbluetooth-dev
pip install git+https://github.com/pybluez/pybluez.git#egg=pybluez
pip install -r requirements.txt