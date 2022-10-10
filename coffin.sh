#!/bin/bash
# Sleep for 1 minute to let fog machine warm up
sleep 60
# start service loop
while true
do
  # Turn on fog machine
  raspi-gpio set 24 op dh
  sleep 1
  raspi-gpio set 24 op dl
  # let fog build up
  sleep 1
  # Start to open coffin
  raspi-gpio set 23 op dh
  sleep 10
  # Turn off fog
  raspi-gpio set 25 op dh
  sleep 1
  raspi-gpio set 25 op dl
  # Keep coffin open for 30 seconds
  sleep 30
  # Close the coffin
  raspi-gpio set 23 op dl
  # Wait for a minute + close time (~10 seconds)
  sleep 30 
done