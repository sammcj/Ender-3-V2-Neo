#!/usr/bin/env bash
#
# This script detects which of the video devices is working with v4l2
#
# /opt/scripts/ustreamer.sh
# Can be called with a udev rule like:
# ACTION=="add|change", SUBSYSTEM=="video4linux", ENV{ID_VENDOR_ID}=="046d", RUN+="/opt/scripts/detect-webcam.sh"
#

SYSTEMDCONF=/usr/lib/systemd/system/ustreamer.service.d/settings.conf

# Get all video devices
DEVICES=$(v4l2-ctl --list-devices | grep -o '/dev/video[0-9]*')

# Check if any of them is working and exports WEBCAM variable
for DEV in $DEVICES; do
  if v4l2-ctl -d "$DEV" --list-ctrls | grep -q '^$'; then
    echo "Working webcam found: ${DEV}"
    export WEBCAM="${DEV}"
    chmod 666 "${DEV}"
    exit 0
  fi
done

# If /etc/default/ustreamer.conf does not exist, create it
if [ ! -f "$SYSTEMDCONF" ]; then
  echo "Creating ustreamer service config file"
  mkdir -p /usr/lib/systemd/system/ustreamer.service.d
  echo "Environment=\"WEBCAM=${WEBCAM}\"" >"$SYSTEMDCONF"
else
  echo "Updating ustreamer service with webcam: ${WEBCAM}"
  sed -i "s/Environment=\"WEBCAM=\/dev\/video[0-9]*\"/Environment=\"WEBCAM=${WEBCAM}\"/" "$SYSTEMDCONF"
  cat "$SYSTEMDCONF"
fi

# Check if ustreamer is running, if it is restart it's service with the correct webcam
if pgrep -x "ustreamer" >/dev/null; then
  echo "Restarting ustreamer service"
  systemctl restart ustreamer
fi
