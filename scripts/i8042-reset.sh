#!/bin/bash

case "$1" in
    pre)
        echo -n "i8042" > /sys/bus/platform/drivers/i8042/unbind
        ;;
    post)
        echo -n "i8042" > /sys/bus/platform/drivers/i8042/bind
        ;;
esac
