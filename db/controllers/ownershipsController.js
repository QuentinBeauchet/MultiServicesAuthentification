const { Ownerships } = require("../models/Ownerships");
const { Devices } = require("../models/Devices");
const { Users } = require("../models/Users");

/**
 * Return all devices.
 * @param {*} req
 * @param {*} res
 */
function getAllUsersDevices(req, res) {
  Ownerships.findAll().then((userDevices) => res.status(200).json(userDevices));
}

function getDevicesOfUser(req, res) {
  Ownerships.findAll({
    where: {
      user_uuid: req.params.uuid,
    },
  }).then((devices) => res.status(200).json(devices.map(({ device_address }) => device_address)));
}

function getUserofDevice(req, res) {
  Ownerships.findOne({
    where: {
      device_address: req.params.address,
    },
  }).then((user) => {
    res.status(200).json(user);
  });
}

async function addDevicesForUser(req, res) {
  let { uuid, addresses } = req.body;

  if ([uuid, addresses].includes(undefined)) {
    res.status(200).json({ success: false });
    return;
  }

  let user = await Users.findOne({
    where: {
      uuid,
    },
  });

  if (user == undefined) {
    res.status(200).json({ success: false });
    return;
  }

  let MAC = addresses.split(",");
  await Promise.all(MAC.map((address) => Devices.upsert({ address })));
  await Promise.all(MAC.map((address) => Ownerships.upsert({ user_uuid: uuid, device_address: address })));
  res.status(200).json({ success: true });
}

module.exports = {
  getAllUsersDevices,
  getDevicesOfUser,
  getUserofDevice,
  addDevicesForUser,
};
