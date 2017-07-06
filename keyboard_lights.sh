#!/bin/bash
device=18

scr=/sys/class/leds/input$device::scrolllock/brightness
caps=/sys/class/leds/input$device::capslock/brightness
num=/sys/class/leds/input$device::numlock/brightness

gap=0.08

echo 0 > $num
echo 0 > $caps
echo 0 > $scr

while true
do
	echo 1 > $num
	sleep $gap

	echo 0 > $num
	echo 1 > $caps
	sleep $gap
	
	echo 0 > $caps
	echo 1 > $scr
	sleep $gap
	sleep $gap

	echo 0 > $scr
	echo 1 > $caps
	sleep $gap
	
	echo 0 > $caps
	echo 1 > $num
	sleep $gap
	sleep $gap
done
