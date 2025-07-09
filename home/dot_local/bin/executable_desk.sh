#!/bin/bash
set -euo pipefail

# -----[Helper Functions]-----
# Usage: switch_workspace <number>
switch_workspace() {
  xdotool key "Super_L+$1"
  sleep 0.2
}
# Usage: launch_background "<command>" <sleep_time>
launch_background() {
  eval "$1" &
  sleep "$2"
}

# Lower Volume
pactl set-sink-volume 0 0%
sleep 1

# -----[Workspace Alpha]-----
switch_workspace 1

launch_background "google-chrome-stable --profile-directory='Default'" 3

# -----[Workspace Beta]-----
switch_workspace 2

launch_background "google-chrome-stable --profile-directory='Profile 15'" 3

# -----[Workspace Epsilon]-----
# Check for existance of To-Do file
switch_workspace 5

launch_background "kitty" 0.3
xdotool key "Super_L+Shift+space"
sleep 0.3
bspc node -v -290 0
sleep 0.1
bspc node -v 0 230
sleep 0.1
bspc node -z left -250 0
sleep 0.1
bspc node -z top 0 -420
sleep 0.2
xdotool type "nv ~/Documents/Notes/Personal/t-*.md"
sleep 0.5
xdotool key Return
sleep 0.5

launch_background "kitty" 0.3
xdotool key "Super_L+Shift+space"
sleep 0.2
bspc node -v 290 0
sleep 0.1
bspc node -v 0 -200
sleep 0.1
bspc node -z top 0 -70
sleep 0.1
xdotool type "lowfi"
sleep 0.1
xdotool key Return
sleep 0.2

launch_background "thunar" 1
xdotool key "Super_L+Shift+space"
sleep 0.2
bspc node -v 460 0
sleep 0.1
bspc node -v 0 290
sleep 0.1

# -----[Workspace Zeta]-----
switch_workspace 6
launch_background "spotify" 2

# # -----[Workspace Eta]---
# switch_workspace 7
# launch_background "vesktop" 2
