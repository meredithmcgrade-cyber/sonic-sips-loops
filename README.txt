SONIC SIPS MENU LOOPS
Two screens, one PC, no black frame between loops.

WHAT IS IN THIS FOLDER
  index.html        Launcher with buttons for each screen
  screen1.html      Screen 1 player (2 min 5 sec loop)
  screen2.html      Screen 2 player (1 min 36 sec loop)
  video/            The two video files. Keep this folder next to the HTML files.
  Start Screens.bat Windows: opens both screens on both TVs in one double click
  start-screens.command  Mac: same thing

QUICK START (WINDOWS)
  1. Copy this whole folder onto the PC, for example to the Desktop.
  2. Plug both TVs into the PC. In Windows display settings choose "Extend"
     so the second TV is to the right of the first.
  3. Double click "Start Screens.bat". Two fullscreen Chrome windows open,
     one on each TV, and start playing.
  4. If a window lands on the wrong TV, press Esc, drag it over, press F.

QUICK START (MAC)
  1. Copy this folder to the Mac.
  2. Right click "start-screens.command", choose Open, and allow it the first time.
  3. Same as above for placement.

MANUAL START (ANY COMPUTER WITH CHROME)
  Open screen1.html in Chrome. Drag the window onto TV 1. Click inside it once.
  Open screen2.html in a new Chrome window. Drag it onto TV 2. Click once.

KEYS WHILE A SCREEN IS PLAYING
  F    toggle fullscreen
  Esc  leave fullscreen
  R    restart the loop
  D    show or hide a small debug readout (loop count, time, status)

KEEP IT RUNNING
  Turn off sleep, screensaver and display power off in the PC's power settings.
  The page asks the browser to keep the screen awake, but Windows and Mac
  power settings override that.
  Set the PC to log in automatically and put the .bat or .command file in the
  startup folder if the PC gets rebooted often.
  If a loop ever freezes for 10 seconds the page reloads itself.

HOW THE LOOP WORKS
  Each page holds two copies of the video. While one plays, the other sits
  decoded at frame one. A few frames before the end the second copy starts
  and the page swaps to it on its first painted frame, so the decoder never
  tears down and there is no black frame.

Built by Signal Theory.
