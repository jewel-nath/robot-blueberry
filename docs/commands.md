# Working on the robot

How the team reached Blueberry's Raspberry Pi in 2021.

## Connect

Connect the robot to a Wi-Fi router and find its IP address, for example in
the router's list of connected devices. Then work on it over SSH or VNC.

- **SSH**, from a terminal, or PuTTY on Windows:

  ```bash
  ssh pi@<robot-ip>
  ```

- **VNC:** open a VNC viewer and connect to `<robot-ip>` to use the Pi's
  desktop.

## If it doesn't start talking after power-on

Restart its service:

```bash
sudo systemctl restart robot.service
```

Or start the program by hand, with the project and device model IDs set in
[`systemd/robot.service`](../systemd/robot.service):

```bash
~/env/bin/python -u ~/robot-blueberry/src/main.py --project_id <project-id> --device_model_id <device-model-id>
```

## Update Raspberry Pi OS

```bash
sudo apt update
sudo apt dist-upgrade -y
```
