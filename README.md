#Keyboard LED Blinky

A simple fun shell script to blink the LEDs on a connected keyboard on a linux machine from /sys/class/leds/ devices. Requires root permissions to run.
The default pattern is a Knight Rider like blinky :) adjust $device variable in script to match your setup.

To make script executable:
`sudo chmod +x keyboard_lights.sh`

To run:
sudo ./keyboard_lights.sh
