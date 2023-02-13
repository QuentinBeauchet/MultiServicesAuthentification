# Installation

```shell
./setup.sh
```

# Run

```shell
cd node-red
npm start
```
Might take 2 tries if docker take too long to start the DataBase services it will cause an issue for the others.

# Error with Python

```shell
/usr/bin/env: «python»: Aucun fichier ou dossier de ce type
```

Replace `#!/usr/bin/env python` with `#!/usr/bin/env python3` in the python files.

# Documentation of API

Some of the API have a swagger file you can import into https://editor.swagger.io/ but they might not be up to date.

# Services

| Services            | Ports |
| ------------------- | ----- |
| MQTT Broker         | 1883  |
| QRCode              | 2500  |
| Client              | 3000  |
| MariaDB             | 3306  |
| HyperPlanning       | 4000  |
| Bluetooth           | 4200  |
| Wifi                | 4300  |
| RFID                | 4400  |
| DataBase API        | 5500  |
| Node-Red            | 8000  |
| PhpMyAdmin          | 8080  |
| Mail                | 7700  |
| Detection Algorithm | 9000  |
