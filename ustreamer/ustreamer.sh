#!/usr/bin/env bash
PORT=${PORT:-9876}
WEBCAM=${WEBCAM:-/dev/video0}
/usr/local/bin/ustreamer --port=$PORT --host=0.0.0.0 --process-name-prefix ustreamer-0 --buffers=3 --resolution=1280x720 --device="$WEBCAM" --quality=80 --workers=2 --encoder=hw --slowdown --desired-fps=20
