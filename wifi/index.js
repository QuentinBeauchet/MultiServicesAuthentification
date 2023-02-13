const fetch = require("node-fetch");
const sudo = require("sudo-js");
require("dotenv").config();

process.title = "bus_wifi";

sudo.setPassword(process.env.PASSWORD);

const intervalTime = 5 * 60 * 10000;
const re = /([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}/g;

const DB_API_WIFI_ADD = "http://localhost:8000/api/db/wifi/devices/add";

function scanWifi() {
  console.log("Scanning Wifi for connections");
  sudo.exec(["nmap", "-sP", `${process.env.LOCAL_IP}/24`], (err, pid, result) => {
    if (err) {
      console.error(`exec error: ${err}`);
      return;
    }

    if (!result) {
      console.error("exec result is null");
      return;
    }

    const addresses = result.match(re);

    console.log("Detected :", addresses);

    fetch(DB_API_WIFI_ADD, {
      method: "POST",
      body: JSON.stringify({ addresses }),
      headers: {
        "Content-Type": "application/json",
      },
    })
      .then((res) => res.json())
      .catch((error) => console.log(`Error while sending data : ${error}`));
  });
}

if (!process.env.LOCAL_IP) {
  console.log(`Can't start Wifi service because LOCAL_IP is not set`);
  return;
}

console.log(`Wifi Detection service started`);

scanWifi();
setInterval(() => {
  scanWifi();
}, intervalTime);
