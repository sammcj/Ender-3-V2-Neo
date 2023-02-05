#!/usr/bin/env bash

mkdir -p /usr/lib/systemd/system/ustreamer.service.d

cp -f ustreamer.service /usr/lib/systemd/system/ustreamer.service
cp -f ustreamer.conf /usr/lib/systemd/system/ustreamer.service.d/settings.conf
cp -f detect-webcam.sh /opt/scripts/detect-webcam.sh
cp -f ustreamer.sh /opt/scripts/ustreamer.sh
chmod 755 /opt/scripts/detect-webcam.sh /opt/scripts/ustreamer.sh

/opt/scripts/detect-webcam.sh

systemctl daemon-reload
systemctl enable ustreamer
systemctl status ustreamer
