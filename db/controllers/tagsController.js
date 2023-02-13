const { Tags } = require("../models/Tags");
const { Users } = require("../models/Users");

function getAllRFID(req, res) {
  Tags.findAll().then((tags) => res.status(200).json(tags));
}

async function addTagsForUser(req, res) {
  let { uuid, rfids } = req.body;

  console.log(req.body);
  if ([uuid, rfids].includes(undefined)) {
    res.status(200).json({ success: false });
    return;
  }

  let user = await Users.findOne({
    where: {
      uuid,
    },
  });

  console.log(user);

  if (user == undefined) {
    res.status(200).json({ success: false });
    return;
  }

  let RFIDS = rfids.split(",");
  await Promise.all(RFIDS.map((rfid) => Tags.upsert({ user_uuid: uuid, card_rfid: rfid })));

  console.log("DONE");
  res.status(200).json({ success: true });
}

function getTagsOfUser(req, res) {
  Tags.findAll({
    where: {
      user_uuid: req.params.uuid,
    },
  }).then((tags) => res.status(200).json(tags.map(({ card_rfid }) => card_rfid)));
}

function getUserofTag(req, res) {
  Tags.findOne({
    where: {
      card_rfid: req.params.rfid,
    },
  }).then((user) => {
    res.status(200).json(user);
  });
}

module.exports = {
  addTagsForUser,
  getAllRFID,
  getTagsOfUser,
  getUserofTag,
};
