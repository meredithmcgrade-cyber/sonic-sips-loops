#!/bin/bash
# Opens Screen 1 on the main display and Screen 2 on the display to its right.
HERE="$(cd "$(dirname "$0")" && pwd)"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
[ -x "$CHROME" ] || CHROME="/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"
if [ ! -x "$CHROME" ]; then echo "Could not find Chrome or Edge. Open screen1.html and screen2.html by hand."; read -r; exit 1; fi
FLAGS="--kiosk --autoplay-policy=no-user-gesture-required --disable-session-crashed-bubble --noerrdialogs --no-first-run"
"$CHROME" $FLAGS --user-data-dir="/tmp/sips-screen1" --window-position=0,0 "file://$HERE/screen1.html" >/dev/null 2>&1 &
sleep 3
"$CHROME" $FLAGS --user-data-dir="/tmp/sips-screen2" --window-position=1920,0 "file://$HERE/screen2.html" >/dev/null 2>&1 &
