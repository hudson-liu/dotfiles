#!/usr/bin/env bash

# Terminate existing bar instances
polybar-msg cmd quit

# Launch bar
echo "---" | tee -a /tmp/polybar1.log 
polybar Nordbar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
