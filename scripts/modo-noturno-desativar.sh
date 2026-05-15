#!/bin/bash
echo balance_performance | tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference
hdparm -S 0 /dev/sda
echo "Modo noturno desativado: $(date)" >> /var/log/modo-noturno.log
sudo mount -o remount,commit=5 /
