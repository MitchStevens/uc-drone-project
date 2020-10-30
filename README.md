# uc-drone-project
2020 Capstone project

## Install image
- install the image to the sd card. We did this on linux:
  1. Find the name of the raspberrypi by running `lsblk`.
  2. Download the raspberrypi ROS image and extract it.
  3. run `dd bs=8M status=progress if=name-of-ubuntu-image.img of=/dev/name-of-sd-card`, replacing the input and output files as needed.

## Log in to RPi
- Hook up the RaspberryPi to a monitor, mouse and keyboard. Provide a wired internet connection and power.
- Once the RPi boots up, log into the system as "UbuntuUser" with password "ubuntu".
- Open up the LXTerminal and run the following:
  - `git clone https://github.com/MitchStevens/uc-drone-project`
  - `cd uc-drone-project`

## Install access point
- We used the tutorial here: https://www.raspberrypi.org/documentation/configuration/wireless/access-point-routed.md
- run `sudo make install-access-point`
- After the access point is setup, connect to the new access point:
  - ssid: ubiquityrobot****
  - pass: robotseverywhere

## Connecting remotely to the RPi
- We used ssh to communicate with the drone
- Run `ssh ubuntu@ubiquityrobot.local` with password "ubuntu"









- remember to weight the kabuki to the floor
-  add extra battery pack
- put additional weight to the systemg
