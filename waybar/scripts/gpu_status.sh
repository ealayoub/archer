#!/bin/bash

STATUS=$(cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status)

if [ "$STATUS" = "suspended" ]; then
    echo '{"text": "●", "class": "inactive"}'
else
    echo '{"text": "●", "class": "active"}'
fi
