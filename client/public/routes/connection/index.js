
const msgError = document.getElementById("msg");

const loginDiv = document.getElementById("container");

const login = document.getElementById("username"); 
const pwd = document.getElementById("password");

const submit = document.getElementById("submit");

submit.onclick = submitLogin;

customElements.define(
    "qr-code",
    QRStudent
);

customElements.define(
    "teacher-login",
    TeacherLogin
);

let handler = async function(e) {
    if (e.key === "Enter") {
        console.log("Enter");
        await submitLogin();
    }
}

window.addEventListener("keypress", handler);

async function submitLogin() {
    let loginValue = login.value;
    let pwdValue = pwd.value;

    const response = await fetch(API_URL+"/connection", {
        method: 'POST',
        body: JSON.stringify({
            login: loginValue,
            pwd: pwdValue
        }),
        headers: {
            'Content-Type': 'application/json'
        }
    });
    const json = await response.json();

    if (JSON.stringify(json) !== JSON.stringify({})) {

        let type = json.type;

        if (type === "STUDENT") {
            // TODO
            // qrCode();
        }
        else if (type === "TEACHER") {
            msgError.setAttribute("hidden", "hidden");
            window.removeEventListener("keypress", handler);
            loginDiv.remove();
            
            teacherlist(json);
        }
    }
    else {
        msgError.removeAttribute("hidden");
    } 
}
