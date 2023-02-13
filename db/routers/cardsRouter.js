const cardsController = require("../controllers/cardsController.js");

function cardsRouter(app) {
  console.log("Initializing Cards routes");
  //------ GET --------
  app.get("/cards", cardsController.getAllCards);

  app.get("/cards/:rfid", cardsController.getHistory);

  app.get("/cards/:from/:to", cardsController.getInterval);

  //------ POST --------
  app.post("/cards/add", cardsController.addCard);
}

module.exports = {
  cardsRouter,
};
