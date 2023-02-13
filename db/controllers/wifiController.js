const { Wifi } = require("../models/Wifi");
const { Devices } = require("../models/Devices");
const { Ownerships } = require("../models/Ownerships");
const { Op } = require("sequelize");

function getAllDevices(req, res) {
  Wifi.findAll().then((wifiDevices) => res.status(200).json(wifiDevices));
}

function getHistory(req, res) {
  Wifi.findAll({
    where: {
      device_address: req.params.address,
    },
    attributes: ["time"],
  }).then((devices) => {
    res.status(200).json(devices.map(({ time }) => time));
  });
}

async function getInterval(req, res) {
  if ([req.params.from, req.params.to].includes(undefined)) {
    res.status(200).json({ success: false });
    return;
  }

  let events = await Wifi.findAll({
    where: {
      time: {
        [Op.between]: [new Date(Number(req.params.from)), new Date(Number(req.params.to))],
      },
    },
    attributes: ["time", "device_address"],
    include: [
      {
        model: Devices,
        attributes: ["name"],
        required: true,
        include: [
          {
            model: Ownerships,
            required: true,
            attributes: ["user_uuid"],
          },
        ],
      },
    ],
  });

  res.status(200).json(events);
}

async function addDevices(req, res) {
  let { addresses } = req.body;

  if (!addresses) {
    res.status(200).json({ success: false });
    return;
  }

  await Promise.all(addresses.map((address) => Devices.upsert({ address })));
  await Promise.all(addresses.map((address) => Wifi.create({ device_address: address })));

  res.status(200).json({ success: true });
}

module.exports = {
  getAllDevices,
  getHistory,
  getInterval,
  addDevices,
};
