const { Sequelize } = require("sequelize");

const { Bluetooth } = require("./models/Bluetooth");
const { Devices } = require("./models/Devices");
const { Ownerships } = require("./models/Ownerships");
const { QRCode } = require("./models/QRCode");
const { Wifi } = require("./models/Wifi");
const { Users } = require("./models/Users");
const { Tags } = require("./models/Tags");
const { Cards } = require("./models/Cards");

const { table, user, password, host, port, dialect } = require("./config");

async function initDB() {
  const sequelize = new Sequelize(table, user, password, {
    host,
    port,
    dialect,
    logging: false,
  });

  try {
    await sequelize.authenticate();
  } catch (error) {
    throw `Unable to connect to the database: ${error}`;
  }

  const models = { Bluetooth, Devices, Ownerships, QRCode, Users, Wifi, Tags, Cards };
  const values = Object.values(models);

  values.forEach((model) => model.init(sequelize));
  values.forEach((model) => model.associate(models));
}

module.exports = {
  initDB,
};
