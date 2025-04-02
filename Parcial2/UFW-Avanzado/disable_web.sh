#!/bin/bash
# Deshabilita acceso HTTP/HTTPS
sudo ufw delete allow proto tcp from 192.168.90.2 to any port 80
sudo ufw delete allow proto tcp from 192.168.90.2 to any port 443
logger "HTTP/HTTPS deshabilitado (fuera de horario laboral)"
