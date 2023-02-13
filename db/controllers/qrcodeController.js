const { QRCode } = require("../models/QRCode");
const { Users } = require("../models/Users");
const { Op } = require("sequelize");

function getAllConnections(req, res) {
  QRCode.findAll().then((events) => res.status(200).json(events));
}

function getStudentId(req, res) {
  QRCode.findAll({ where: { user_uuid: req.params.uuid } }).then((events) => {
    res.status(200).json(events);
  });
}

async function getInterval(req, res) {
  if ([req.params.from, req.params.to].includes(undefined)) {
    res.status(200).json({ success: false });
    return;
  }

  let events = await QRCode.findAll({
    where: {
      time: {
        [Op.between]: [new Date(Number(req.params.from)), new Date(Number(req.params.to))],
      },
    },
    attributes: ["time", "user_uuid"],
  });

  res.status(200).json(events);
}

async function addConnection(req, res) {
  let { verifiedId, user } = req.body;
  if (verifiedId == false) {
    res.status(200).json({ success: false });
    return;
  }
  let { firstName: first_name, lastName: last_name, uuid, type } = user;

  await Users.upsert({ uuid, first_name, last_name, type });

  await QRCode.create({ user_uuid: uuid });

  res.status(200).json({ success: true });
}

module.exports = {
  getAllConnections,
  getStudentId,
  getInterval,
  addConnection,
};
