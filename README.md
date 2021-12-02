# Install Docker and Docker-Compose
* Docker (Ubuntu 20.04 as example)
  * https://docs.docker.com/engine/install/ubuntu/
* Docker compose
  * https://docs.docker.com/compose/install/

# Install Let's Encrypt
```
sudo apt install certbot
sudo certbot certonly --standalone
```

# Install
```
# install system service
./install.sh 

# create config file
cp config/config_sample.json config/config.json

# put keys under config folder
cp /etc/letsencrypt/live/<your_domain>/{fullchain.pem,privkey.pem} config

# update the sni in config/config.json to your domain

# test docker services
sudo docker-compose up

# if no error, launch it with systemd
sudo systemctl start trojan

# make it auto run when reboot
sudo systemctl enable trojan

```

# Auto renew license
```
cp renew_cert_sample.sh renew_cert.sh

# change __mydomain__ to the real domain in script renew_cert.sh

# run this script periodically to renew
./renew_cert.sh
```
