#!/bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

DOMAIN=__mydomain__

sudo certbot renew

sudo cp /etc/letsencrypt/live/$DOMAIN/{fullchain.pem,privkey.pem} $SCRIPT_DIR/config

sudo systemctl restart trojan
