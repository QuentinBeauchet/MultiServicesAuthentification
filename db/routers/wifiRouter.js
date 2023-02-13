const wifiController = require("../controllers/wifiController.js");

function wifiRouter(app) {
  console.log("Initializing Wifi routes");
  //------ GET --------
  app.get("/wifi/devices", wifiController.getAllDevices);

  app.get("/wifi/:address", wifiController.getHistory);

  app.get("/wifi/:from/:to", wifiController.getInterval);

  //------ POST --------
  app.post("/wifi/devices/add", wifiController.addDevices);
}

module.exports = {
  wifiRouter,
};
