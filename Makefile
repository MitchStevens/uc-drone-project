run: 
	tmuxp load ./tmuxsession.yaml

install:
	apt install python-pip tmux;
  pip install --user python;
  pip install --user python-setuptools;
  pip install --user python-smbus;
  pip install --user tmuxp;

