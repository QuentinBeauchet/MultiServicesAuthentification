# RFID Reader

For linux :

```shell
sudo nano /etc/modprobe.d/blacklist-libnfc.conf
```

and put

```shell
blacklist nfc
blacklist pn533
blacklist pn533_usb
```

for Windows :

- Download Zadig : https://zadig.akeo.ie
- Connect your NFC device
- Run the downloaded executable
- Click Options -> List All Devices
- Select your NFC reading/writing device from the list
- Select the WinUSB driver from the other drop down and install it

# Start

```zsh
python bus_rfid.py
```

or

```zsh
./bus_rfid.py
```
