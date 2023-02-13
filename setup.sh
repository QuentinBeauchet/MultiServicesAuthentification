#!/usr/bin/env bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

init_bluetooth(){
    echo -e "${GREEN}-> Installing bluetooth dependencies${NC}"
    cd ./bluetooth
    ./setup.sh
    cd ..
}


init_client(){
    echo -e "${GREEN}-> Installing client dependencies${NC}"
    cd ./client
    npm install
    cd ..
}

init_db(){
    echo -e "${GREEN}-> Installing db dependencies${NC}"
    cd ./db
    npm install
    npm run docker:build
    sleep 5
    npm run docker:load
    cd ..
}

init_hyperplanning(){
    echo -e "${GREEN}-> Installing hyperplanning dependencies${NC}"
    cd ./hyperplanning
    npm install
    cd ..
}

init_node-red(){
    echo -e "${GREEN}-> Installing node-red dependencies${NC}"
    cd ./node-red
    npm install
    cd ..
}

init_qr-code-generation(){
    echo -e "${GREEN}-> Installing qr-code-generation dependencies${NC}"
    cd ./qr-code-generation
    npm install
    cd ..
}

init_wifi(){
    echo -e "${GREEN}-> Installing wifi dependencies${NC}"
    cd ./wifi
    npm install
    cd ..
}

init_detection-algorithm(){
    echo -e "${GREEN}-> Installing Detection Algorithm dependencies${NC}"
    cd ./detection-algorithm
    npm install
    cd ..
}

init_rfid(){
    echo -e "${GREEN}-> Installing rfid dependencies${NC}"
    cd ./rfid
    ./setup.sh
    cd ..
}

init_mail() {
    echo -e "${GREEN}-> Installing mail dependencies${NC}"
    cd ./mail
    npm install
    cd ..
}


if [ -z "$1" ];
then
  init_bluetooth
  init_client
  init_db
  init_hyperplanning
  init_node-red
  init_qr-code-generation
  init_wifi
  init_detection-algorithm
  init_rfid
  init_mail
else
    case $1 in
        "0")
            init_bluetooth
            ;;

        "1")
            init_client
            ;;

        "2")
            init_db
            ;;

        "3")
            init_hyperplanning
            ;;

        "4")
            init_node-red
            ;;

        "5")
            init_qr-code-generation
            ;;

        "6")
            init_wifi
            ;;

        "7")
            init_detection-algorithm
            ;;
        
        "8")
            init_rfid
            ;;

        "9")
            init_rfid
            ;;

        *)
            echo -e "${GREEN}Bus range from 0 to 6 :${NC}"
            echo -e "0 -> Bluetooth"
            echo -e "1 -> Client"
            echo -e "2 -> DB"
            echo -e "3 -> HyperPlanning"
            echo -e "4 -> Node-Red"
            echo -e "5 -> QrCode Generation"
            echo -e "6 -> Wifi"
            echo -e "7 -> Detection Algorithm"
            echo -e "8 -> Rfid"
            echo -e "9 -> Mail"
            ;;
    esac
fi

