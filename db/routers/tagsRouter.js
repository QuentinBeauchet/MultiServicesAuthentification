const tagsController = require("../controllers/tagsController.js");

function tagsRouter(app) {
  console.log("Initializing Tags routes");
  //------ GET --------
  app.get("/tags", tagsController.getAllRFID);

  app.get("/tags/:uuid", tagsController.getTagsOfUser);

  app.get("/tags/user/:rfid", tagsController.getUserofTag);

  //------ POST --------
  app.post("/tags/add", tagsController.addTagsForUser);
}

module.exports = {
  tagsRouter,
};
