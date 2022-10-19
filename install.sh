#!/bin/bash
DIR=`cd $(dirname "${BASH_SOURCE[0]}"); pwd`
cp $DIR/zram.conf /etc/zram.conf
cp $DIR/zramctl /usr/local/bin/zramctl
cp $DIR/zram.service /etc/systemd/system/zram.service
chmod +x /usr/local/bin/zramctl
systemctl daemon-reload
systemctl enable zram.service
systemctl start zram.service
