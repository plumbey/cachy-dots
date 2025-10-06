#!/bin/bash

# Kill any running Waybar processes
killall waybar

# Wait briefly to ensure Waybar is fully terminated
sleep 1

# Start Waybar again
waybar &
