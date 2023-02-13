const fetch = require("node-fetch")
require("dotenv").config();

process.title = "bus_camera";

const DB_API_CAMERA_ADD = "http://localhost:8000/api/db/camera/add";

async function scanCamera() {
    await fetch('https://api.netatmo.com/api/getevents?home_id=60a4bee65c617575d62de5f9', {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Authorization': `Bearer ${process.env.AUTHORIZATION}`,
            'Refresh': process.env.REFRESH
        },
    })
        .then(res => res.json())
        .then(json => json.body)
        .then(body => body.home)
        .then(home => send(home.events))

}
scanCamera();

function send(events) {
    events.forEach(event =>{
        let personId = event.person_id
        if (personId) {
            fetch(DB_API_CAMERA_ADD, {
                method: "POST",
                body: JSON.stringify({personId}),
                headers: {
                    "Content-Type": "application/json",
                },
            })
                .then((res) => res.json())
                .catch((error) => console.log(`Error while sending data : ${error}`));
        }
    })


}