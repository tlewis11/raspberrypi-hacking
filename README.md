# a collection of setup scripts, plans, and utilties for the raspberry pi.


# Quick start
Prereqs: 
  - export RPI_SSH_KEY=<the/Path/toyour/sshPrivateKey>
  - pip install ansible

1. git clone https://github.com/tlewis11/raspberrypi-hacking
2. cd raspberrypi-hacking
3. create a hosts file named hosts and enter the ip address of your pi in the hosts file.  Refer to [the example hosts file](hosts_file.example) for proper formatting. 
4. ansible-playbook -i hosts rpi.yml

