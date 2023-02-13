# Disable SSL

```shell
export GIT_SSL_NO_VERIFY=1
```

# Error with Python

```shell
/usr/bin/env: «python»: Aucun fichier ou dossier de ce type
```

Replace `#!/usr/bin/env python` with `#!/usr/bin/env python3` in the python files.

# Installation

```shell
./setup.sh
```

# Documentation of API

Go on https://editor.swagger.io/ and import api.yaml

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
| mail                | 7700  |
| Detection Algorithm | 9000  |
