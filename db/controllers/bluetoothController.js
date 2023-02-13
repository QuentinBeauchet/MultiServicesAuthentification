const { Devices } = require("../models/Devices");
const { Bluetooth } = require("../models/Bluetooth");
const { Ownerships } = require("../models/Ownerships");
const { Op } = require("sequelize");

function getAllDevices(req, res) {
  Bluetooth.findAll().then((devices) => res.status(200).json(devices));
}

function getHistory(req, res) {
  Bluetooth.findAll({
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

  let events = await Bluetooth.findAll({
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
  if (!req.body) {
    res.status(200).json({ success: false });
    return;
  }

  await Promise.all(req.body.map(({ address, name }) => Devices.upsert({ address, name })));
  await Promise.all(req.body.map(({ address }) => Bluetooth.create({ device_address: address })));

  res.status(200).json({ success: true });
}

module.exports = {
  getAllDevices,
  getHistory,
  getInterval,
  addDevices,
};
