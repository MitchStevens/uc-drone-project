# uc-drone-project
2020 Capstone project

## requirements:
- python-pip
- python
- python-setuptools
- python-smbus

## wifi password
- ssid: ubiquityrobot148D
- pass: robotseverywhere

- remember to weight the kabuki to the floor
-  add extra battery pack
- put additional weight to the systemg

# Commands
- ssh ubuntu@ubiquityrobot.local
- pass: ubuntu

- roslaunch kobuki_node minimal.launch
- roslaunch kobuki_keyop keyop.launch
- rosrun rosserial_python serial_node.py /dev/ttyUSB0
