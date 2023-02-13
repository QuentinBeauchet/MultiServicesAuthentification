/* Every 10 seconds, send via the topic "qrcode" of the mqtt the generated qrcode */
var express = require("express");
var app = express();
let mqtt = require("mqtt");

const port = 2500;

process.title = "bus_qr";

let client = mqtt.connect("http://localhost:1883");

let randomNumber;

const publishNewID = () => {
  randomNumber = Math.floor(Math.random() * 100000);
  client.publish("qrcode", randomNumber.toString());
  console.log(`Generated new id ${randomNumber}`);
};

app.get("/api/verify", (req, res) => {
  if (req.query.id == randomNumber) {
    res.send("true");
  } else {
    res.send("false");
  }
});

app.listen(port, () => {
  console.log(`QRCode API listening on http://localhost:${port}`);
  publishNewID();
  setInterval(publishNewID, 60000);
});
