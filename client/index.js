const express = require("express");
var bodyParser = require("body-parser");
const app = express();
const port = 3000;

process.title = "bus_client";

var fs = require("fs");

var cors = require("cors");
app.use(cors());
app.use(bodyParser.json());

app.use(express.static("public"));

const callbacks = {
  connection: (req, res, data) => {
    let id = req.query.id;
    if (id) {
      let html = data.replace("$id$", req.query.id).replace("$ip$", process.env.LOCAL_IP || "localhost");
      res.send(html);
    } else {
      res.sendStatus(404);
    }
  },
  selection: (req, res, data) => {
    res.send(data);
  },
  user: (req, res, data) => {
    res.send(data);
  },
};

app.get("/api/:html", (req, res) => {
  fs.readFile(`./public/${req.params.html}.html`, "utf-8", (err, data) => {
    let callback = callbacks[req.params.html];
    if (!(callback && data)) {
      res.sendStatus(404);
      return;
    }
    callback(req, res, data);
  });
});

app.listen(port, () => {
  console.log(`Client listening on http://localhost:${port}`);
});
