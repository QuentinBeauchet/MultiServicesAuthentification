const { Users } = require("../models/Users");

function getAllUsers(req, res) {
  Users.findAll().then((users) => res.status(200).json(users));
}

function addUser(req, res) {
  let { uuid, firstName, lastName, type, rfid_id } = req.body;
  if ([uuid, firstName, lastName, type, rfid_id].includes(undefined)) {
    res.status(200).json({ success: false });
  } else {
    Users.upsert({ uuid, firstName, lastName, type, rfid_id }).then(() => {
      res.status(200).json({ success: true });
    });
  }
}

module.exports = {
  getAllUsers,
  addUser,
};
