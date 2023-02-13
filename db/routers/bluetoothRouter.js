const bluetoothController = require("../controllers/bluetoothController.js");

function bluetoothRouter(app) {
  console.log("Initializing Bluetooth routes");
  //------ GET --------
  app.get("/bluetooth/devices", bluetoothController.getAllDevices);

  app.get("/bluetooth/:address", bluetoothController.getHistory);

  app.get("/bluetooth/:from/:to", bluetoothController.getInterval);

  //------ POST --------
  app.post("/bluetooth/devices/add", bluetoothController.addDevices);
}

module.exports = {
  bluetoothRouter,
};
