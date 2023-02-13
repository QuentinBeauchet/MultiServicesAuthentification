const userController = require("../controllers/userController.js");

function userRouter(app) {
  console.log("Initializing User routes");
  //------ GET --------
  app.get("/users", userController.getAllUsers);

  //------ POST --------
  app.post("/user/add", userController.addUser);
}
module.exports = {
  userRouter,
};
