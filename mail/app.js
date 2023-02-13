const bodyParser = require("body-parser");
const express = require("express");
const nodemailer = require("nodemailer");
const app = express();
const fs = require("fs");
const cors = require("cors");

app.use(cors());
app.use(bodyParser.json());

process.title = "bus_mail";

const PORT = 7700;

/**
 * POST /send
 *
 *  Send an email to the specified address with the given information in the request body.
 *  The request body should contain the following fields:
 *  - recipients: a string containing the email address of the recipient
 *  - id: the id of the email
 *  - cours: the name of the course
 *  - name: the name of the student
 *
 */
app.post("/api/send", async (req, res) => {
  try {
    const { users, course } = req.body;

    const transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 465,
      secure: true,
      auth: {
        user: "cdspgroupe6@gmail.com",
        pass: "rgpsguoaifwtzjzp",
      },
    });

    fs.readFile(`./public/template.html`, "utf-8", async (err, data) => {
      if (err) {
        console.log(err);
      }

      await Promise.allSettled(
        users.map(({ firstName, email }) => {
          return new Promise((resolve, rejects) => {
            if (email == "") {
              rejects();
              return;
            }

            let mailOptions = {
              from: "cdspgroupe6@gmail.com",
              to: email,
              subject: `Retard au cours de ${cours}`,
              html: data.replace("$cours$", course).replace("$name$", firstName),
            };

            transporter
              .sendMail(mailOptions)
              .then(() => resolve())
              .catch(() => rejects());
          });
        })
      );

      res.status(200).json({ message: "Email sent successfully" });
    });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.listen(PORT, () => {
  console.log(`Server mail started on port ${PORT}`);
});
