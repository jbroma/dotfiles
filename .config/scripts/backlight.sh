#!/bin/bash

echo "$(light -s sysfs/backlight/intel_backlight | cut -d. -f1)"
