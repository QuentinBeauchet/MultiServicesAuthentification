const qrcodeController = require("../controllers/qrcodeController.js");

function qrcodeRouter(app) {
  console.log("Initializing QR routes");
  //------ GET --------
  app.get("/qrcode/connections", qrcodeController.getAllConnections);

  app.get("/qrcode/student/:uuid", qrcodeController.getStudentId);

  app.get("/qrcode/:from/:to", qrcodeController.getInterval);

  //------ POST --------
  app.post("/qrcode/connection", qrcodeController.addConnection);
}

module.exports = {
  qrcodeRouter,
};
