#!/usr/bin/env bash

if pgrep -x "$1"
then
   echo "Process already started"
else
   case $1 in

    bus_client)
      echo -n "Starting Client"
      cd ../client
      LOCAL_IP=$2 npm start
      ;;

    bus_qr)
      echo -n "Starting QR"
      cd ../qr-code-generation
      npm start
      ;;
    
    bus_db)
      echo -n "Starting DB"
      cd ../db
      docker-compose up -d
      npm start
      ;;

    bus_hyper)
      echo -n "Starting HyperPlanning"
      cd ../hyperplanning
      npm start
      ;;

    bus_bt.py)
      echo -n "Starting Bluetooth"
      cd ../bluetooth
      ./bus_bt.py
      ;;

    bus_wifi)
      echo -n "Starting Wifi"
      cd ../wifi
      LOCAL_IP=$2 npm start
      ;;

    bus_mail)
      echo -n "Starting Mail"
      cd ../mail
      npm start
      ;;

    bus_algo)
      echo -n "Starting Detection algorithm"
      cd ../detection-algorithm
      npm start
      ;;

    bus_rfid.py)
      echo -n "Starting RFID"
      cd ../rfid
      ./bus_rfid.py
      ;;

    *)
      echo -n "Unknown Bus" $1
      ;;
  esac
fi