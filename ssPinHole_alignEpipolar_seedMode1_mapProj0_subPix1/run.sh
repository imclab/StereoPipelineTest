#!/bin/bash

set -x verbose
rm -rfv run

stereo ../data/1n270487304eff90cip1952l0m1.tif ../data/1n270487304eff90cip1952r0m1.tif ../data/1n270487304eff90cip1952l0m1.cahvor ../data/1n270487304eff90cip1952r0m1.cahvor run/run -s stereo.default --alignment-method epipolar --corr-seed-mode 1 --subpixel-mode 1
point2dem -r moon --nodata-value -32767 run/run-PC.tif




