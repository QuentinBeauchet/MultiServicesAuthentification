#!/usr/bin/env python3

import time
import requests
import nfc
import sys
from nfc.clf import RemoteTarget

DATABASE_URL = "http://localhost:8000/api/db/rfid/add"
DELAY_LAST_BADGING = 60


def show(data):
    print(data, file=sys.stdout)
    sys.stdout.flush()


def getRFIDIdentifier(clf):
    while True:
        target = clf.sense(RemoteTarget("106A"), RemoteTarget("106B"), RemoteTarget("212F"))

        if target is not None:
            rfid_tag = nfc.tag.activate(clf, target)
            if rfid_tag is not None:
                identifier = rfid_tag.identifier.hex()
                return identifier

        time.sleep(1)


def loop():
    show("Starting Rfid service ...")
    clf = nfc.ContactlessFrontend()
    if not clf.open("usb"):
        print("RFID detector not connected")
        return
    prev = ("", 0)
    while True:
        tag = getRFIDIdentifier(clf)

        if tag is None:
            time.sleep(0.5)
            continue

        timestamp = int(time.time())
        if prev[0] != tag or (timestamp - prev[1]) > DELAY_LAST_BADGING:
            prev = (tag, timestamp)
            show(f"RFID Detected : {tag}")
            send_data({"rfid": tag})


def send_data(tag):
    try:
        requests.post(DATABASE_URL, json=tag, timeout=2)
    except requests.exceptions.ConnectionError:
        print("Connection Error : " + DATABASE_URL + " not found")
    except requests.exceptions.ReadTimeout:
        print("Connection Error : " + DATABASE_URL + " not avalaible")


if __name__ == "__main__":
    loop()
