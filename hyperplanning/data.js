let day = "24 Jan 2023";
let yesterday = "23 Jan 2023";

let courses = [
  {
    id: 0,
    name: "Mathematics",
    from: new Date(`${yesterday} 8:00`).getTime(),
    to: new Date(`${day} 23:59`).getTime(),
  },
  {
    id: 1,
    name: "History",
    from: new Date(`${day} 13:30`).getTime(),
    to: new Date(`${day} 15:15`).getTime(),
  },
  {
    id: 2,
    name: "French",
    from: new Date(`${day} 15:30`).getTime(),
    to: new Date(`${day} 17:45`).getTime(),
  },
  {
    id: 3,
    name: "Electronics",
    from: new Date(`${day} 18:00`).getTime(),
    to: new Date(`${day} 20:15`).getTime(),
  },
  {
    id: 4,
    name: "Demo",
    from: new Date(`${day} 8:00`).getTime(),
    to: new Date(`${day} 12:15`).getTime(),
  },
];

let users = [
  {
    id: 0,
    firstName: "Mark",
    lastName: "Brea",
    uuid: "mb1252344",
    picture: undefined,
    type: "STUDENT",
    email: "mark.brea@fake-address.com",
  },
  {
    id: 1,
    firstName: "Lucie",
    lastName: "Boval",
    uuid: "lb8749369",
    picture: undefined,
    type: "STUDENT",
    email: "lucie.boval@fake-address.com",
  },
  {
    id: 2,
    firstName: "Pierce",
    lastName: "Loud",
    uuid: "pl34439764",
    picture: undefined,
    type: "STUDENT",
    email: "pierce.loud@fake-address.com",
  },
  {
    id: 3,
    firstName: "Clerence",
    lastName: "Nixens",
    uuid: "cn456205",
    picture: undefined,
    type: "STUDENT",
    email: "clerence.nixens@fake-address.com",
  },
  {
    id: 4,
    firstName: "Rudolph",
    lastName: "Herasm",
    uuid: "rm20394818",
    picture: undefined,
    type: "TEACHER",
    email: "",
  },
];

let registration = [
  {
    course_id: 0,
    course_name: "Mathematics",
    users_id: [0, 1, 4],
  },
  {
    course_id: 1,
    course_name: "History",
    users_id: [2],
  },
  {
    course_id: 2,
    course_name: "French",
    users_id: [0, 3, 4],
  },
  {
    course_id: 3,
    course_name: "Electronics",
    users_id: [0, 1, 2, 3, 4],
  },
  {
    course_id: 4,
    course_name: "Demo",
    users_id: [0, 1, 2, 3, 4],
  },
];

module.exports = {
  courses,
  users,
  registration,
};
