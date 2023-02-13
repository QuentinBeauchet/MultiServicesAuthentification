const { Cards } = require("../models/Cards");
const { Tags } = require("../models/Tags");
const { Op } = require("sequelize");

function getAllCards(req, res) {
  Cards.findAll().then((cards) => res.status(200).json(cards));
}

function getHistory(req, res) {
  Cards.findAll({
    where: {
      rfid: req.params.rfid,
    },
    attributes: ["time"],
  }).then((cards) => {
    res.status(200).json(cards.map(({ time }) => time));
  });
}

async function getInterval(req, res) {
  if ([req.params.from, req.params.to].includes(undefined)) {
    res.status(200).json({ success: false });
    return;
  }

  let events = await Cards.findAll({
    where: {
      time: {
        [Op.between]: [new Date(Number(req.params.from)), new Date(Number(req.params.to))],
      },
    },
    attributes: ["time", "rfid"],
    include: [
      {
        model: Tags,
        attributes: ["user_uuid"],
        required: true,
      },
    ],
  });

  res.status(200).json(events);
}

async function addCard(req, res) {
  if (req.body.rfid == undefined) {
    res.status(200).json({ success: false });
    return;
  }

  await Cards.create({ rfid: req.body.rfid });

  res.status(200).json({ success: true });
}

module.exports = {
  getAllCards,
  getHistory,
  getInterval,
  addCard,
};
