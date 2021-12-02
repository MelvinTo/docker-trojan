#!/bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

sed "s=__CUR_DIR__=$SCRIPT_DIR=" $SCRIPT_DIR/trojan.service | sudo tee /etc/systemd/system/trojan.service &>/dev/null && echo Done
