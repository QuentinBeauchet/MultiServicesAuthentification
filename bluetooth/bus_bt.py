#!/usr/bin/env python3

from bluetooth import *
import sys
import requests


DEVICE_DISCOVERY_DURATION = 30
DATABASE_URL = "http://localhost:8000/api/db/bluetooth/devices/add/"


def show(data):
    print(data, file=sys.stdout)
    sys.stdout.flush()


def loop():
    show("Starting the discovery of bluetooth devices ...")
    while True:
        try:
            obj = [{"address": x, "name": y} for (x, y) in discover_devices(
                duration=DEVICE_DISCOVERY_DURATION, lookup_names=True)]
            show(f"Discovered : {obj}")
            send_data(obj)
        except bluetooth.btcommon.BluetoothError:
            continue


def send_data(devices):
    try:
        requests.post(DATABASE_URL, json=devices)
    except requests.exceptions.ConnectionError:
        show("Connection Error : " + DATABASE_URL + " not found")


if __name__ == '__main__':
    loop()
