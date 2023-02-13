const express = require("express");
var bodyParser = require("body-parser");
const app = express();
const port = 4000;

process.title = "bus_hyper";

let { courses, users, registration } = require("./data");

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  res.header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE");
  next();
});

app.use(bodyParser.json());

/************************* CONNECTION *************************/

app.post("/api/connection", (req, res) => {
  let { login } = req.body;
  res.status(200).json(users.find(({ uuid }) => uuid == login) || {});
});

/************************* COURSES *************************/

app.get("/api/courses", (req, res) => {
  res.status(200).json(courses);
});

app.get("/api/courses/:id", (req, res) => {
  console.log(
    "COURSE =>",
    courses.find(({ id }) => id == req.params.id)
  );
  res.status(200).json(courses.find(({ id }) => id == req.params.id));
});

app.get("/api/course/:id/users", (req, res) => {
  let course = registration.find(({ course_id }) => req.params.id == course_id);
  res.status(200).json(users.filter(({ id }) => course?.users_id.includes(id)));
});

app.post("/api/course/:id/validation", (req, res) => {
  let course = registration.find(({ course_id }) => req.params.id == course_id);
  console.log(`L'appel a été validé pour le cours ${course?.name}!!!\n${req.body}`);

  res.status(200).json({});
});

/************************* USERS *************************/

app.get("/api/users", (req, res) => {
  res.status(200).json(users);
});

app.get("/api/user/:id", (req, res) => {
  res.status(200).json(users.find(({ id }) => id == req.params.id));
});

app.get("/api/user/:id/courses", (req, res) => {
  let user_courses = registration.filter(({ users_id }) => users_id.includes(Number(req.params.id)));
  res.status(200).json(user_courses.map(({ course_id }) => courses.find(({ id }) => id == course_id)));
});

app.listen(port, () => {
  console.log(`Hyperplanning API listening on http://localhost:${port}`);
});
