run: 
	tmuxp load ./tmuxsession.yaml

install:
	DEBIAN_FRONTEND=noninteractive 
	apt update
	apt install python3 python-pip python-setuptools python-smbus tmux;
	pip install --user tmuxp;

install-access-point:
	echo "Installing accessing point"
	DEBIAN_FRONTEND=noninteractive 
	apt install hostapd dnsmask netfilter-persistent iptables-persistent dhcpcd5
	systemctl unmask hostapd
	systemctl enable hostapd
	apt install -y netfilter-persistent iptables-persistent
	echo -e '\ninterface wlan0\n    static ip_address=192.168.4.1/24\n    nohook wpa_supplicant' >> /etc/dhcpcd.conf
	echo -e '\ninterface=wlan0\ndhcp-range=192.168.4.2,192.168.4.20,255.255.255.0,24h\ndomain=wlan\naddress=/gw.wlan/192.168.4.1' >> echo /etc/dnsmasq.conf
	rfkill unblock wlan
	echo -e '\ncountry_code=AU\ninterface=wlan0\nssid=UC_DRONE_PROJECT\nhw_mode=g\nchannel=7\nmacaddr_acl=0\nauth_algs=1\nignore_broadcast_ssid=0\nwpa=2\nwpa_passphrase=AardvarkBadgerHedgehog\nwpa_key_mgmt=WPA-PSK\nwpa_pairwise=TKIP\nrsn_pairwise=CCMP' >> /etc/hostapd.conf
	echo "Finished installing access point"

install-ros-modules:
	echo "Installing ros modules"
	apt update
	apt upgrade
	apt install ros-kinetic-rosserial ros-kinetic-rosserial-arduino ros-kinetic-rosserial-python ros-kinetic-rosserial-msgs
	apt install ros-kinetic-kobuki
	snap install arduino	
	echo "Finished installing ros modules"
