const express = require("express");
var bodyParser = require("body-parser");
const app = express();
const port = 9000;

process.title = "bus_algo";

app.use(bodyParser.json());

const weights = {
  wifi: 0.1,
  qr: 0.3,
  rfid: 0.3,
  bluetooth: 0.1,
};

function aggregateData(list, uuids, key, callback) {
  list.forEach((detection) => {
    const uuid = callback(detection);
    if (uuids[uuid] == undefined) {
      uuids[uuid] = { wifi: 0, qr: 0, rfid: 0, bluetooth: 0, camera: 0 };
    }

    uuids[uuid][key] += 1;
  });
}

app.post("/api/process", (req, res) => {
  let { wifi, qr, rfid, bluetooth } = req.body;

  let uuids = {};

  aggregateData(qr, uuids, "qr", (x) => x.user_uuid);
  aggregateData(wifi, uuids, "wifi", (x) => x.Device.Ownership.user_uuid);
  aggregateData(bluetooth, uuids, "bluetooth", (x) => x.Device.Ownership.user_uuid);
  aggregateData(rfid, uuids, "rfid", (x) => x.Tag.user_uuid);

  res.send(uuids);
});

app.post("/api/detect", (req, res) => {
  let { students, detected } = req.body;

  let a = students.map((student) => {
    let detection = detected[student.uuid] || {
      wifi: 0,
      qr: 0,
      rfid: 0,
      bluetooth: 0,
      camera: 0,
    };

    const value =
      weights.wifi * detection.wifi +
      (detection.qr ? weights.qr : 0) +
      (detection.rfid ? weights.rfid : 0) +
      weights.bluetooth * detection.bluetooth;

    const percentage = Math.min(1, value);
    const present = percentage > 0.6;

    student.guess = {
      value,
      percentage,
      present,
    };
    student.detections = detection;

    return student;
  });

  res.send(a);
});

app.listen(port, () => {
  console.log(`Detection Algorithm API listening on http://localhost:${port}`);
});
