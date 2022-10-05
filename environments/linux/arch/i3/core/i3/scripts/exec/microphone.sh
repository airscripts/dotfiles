#!/bin/bash
amixer sset 'Capture' cap
echo 0 > /sys/class/leds/hda::micmute/brightness
