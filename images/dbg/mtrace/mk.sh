#!/bin/sh
gnuplot driver.gp || exit 1
convert performance.svg -size 1280x800 performance.png
