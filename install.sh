#!/bin/bash
DIR=`cd $(dirname "${BASH_SOURCE[0]}"); pwd`
cp $DIR/zram.conf /etc/zram.conf
cp $DIR/zramctl /usr/bin/zramctl
cp $DIR/zram.service /lib/systemd/system/zram.service
chmod +x /usr/bin/zramctl
systemctl daemon-reload
systemctl enable zram.service
systemctl start zram.service
