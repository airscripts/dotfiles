#!/bin/bash
toggle () { <"$1" tr 01 10 > "$1"; }
toggle /sys/class/leds/hda::micmute/brightness
amixer sset 'Capture' toggle
