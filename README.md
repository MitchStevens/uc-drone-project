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

## Install all the necessary software
- This installation process is split up into 3 parts: `install-access-point`, `install-ros-modules`, and `install-drone interface`. You can install all of these by running `sudo make install`
- After the installation process is complete, restart the RPi.

## Connecting remotely to the RPi
- After the access point is setup, connect to it with the following credentials:
  - ssid: ubiquityrobot
  - pass: robotseverywhere
- We use ssh to communicate with the drone
- Run `ssh ubuntu@ubiquityrobot.local` with password "ubuntu"

## Start up the system
- We are now ready to use the system!
- Connect the RPi to the Kobuki drone and the Arduino.The Arduino also needs to be connected to sensor. Consult documentation for information on how to connect up all the components.
- After the RPi starts up, connect remotely to it via ssh.
- Navigate to the repo with `cd uc-drone-project`
- Run `make run` to bring up the interface to move it around!
  - Press 'e' to start up the motors
  - Use the arrow keys to accelerate and turn around.
  - press 'd' to stop all motors (very important!)

## Tips
- Remember to weight the kabuki to the floor
  - You can use an extra battery pack
  - We also used a 5kg weight plate to achieve this
- This installation process will take a while, maybe an hour. Be patient!
