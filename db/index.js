const express = require("express");
var bodyParser = require("body-parser");
const DB = require("./db");

const app = express();
const port = 5500;

process.title = "bus_db";

const { bluetoothRouter } = require("./routers/bluetoothRouter.js");
const { userRouter } = require("./routers/userRouter.js");
const { qrcodeRouter } = require("./routers/qrcodeRouter.js");
const { ownershipsRouter } = require("./routers/ownershipsRouter");
const { wifiRouter } = require("./routers/wifiRouter");
const { tagsRouter } = require("./routers/tagsRouter");
const { cardsRouter } = require("./routers/cardsRouter");

app.use(bodyParser.json());

bluetoothRouter(app);
userRouter(app);
ownershipsRouter(app);
qrcodeRouter(app);
wifiRouter(app);
tagsRouter(app);
cardsRouter(app);

DB.initDB()
  .then(() => {
    app.listen(port, () => {
      console.log(`Database API listening on http://localhost:${port}`);
    });
  })
  .catch((error) => console.error(error));
