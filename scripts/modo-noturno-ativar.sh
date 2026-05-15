#!/bin/bash
echo power | tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference
hdparm -S 12 /dev/sda
echo "Modo noturno ativado: $(date)" >> /var/log/modo-noturno.log
sudo mount -o remount,commit=600 /
