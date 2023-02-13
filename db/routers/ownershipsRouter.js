const ownershipsController = require("../controllers/ownershipsController.js");

function ownershipsRouter(app) {
  console.log("Initializing Ownerships routes");
  //------ GET --------
  app.get("/ownerships", ownershipsController.getAllUsersDevices);

  app.get("/ownerships/:uuid", ownershipsController.getDevicesOfUser);

  app.get("/ownerships/user/:address", ownershipsController.getUserofDevice);

  //------ POST --------

  app.post("/ownerships/add", ownershipsController.addDevicesForUser);
}
module.exports = {
  ownershipsRouter,
};
