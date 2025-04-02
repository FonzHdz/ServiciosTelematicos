#!/bin/bash
# Habilita acceso HTTP/HTTPS desde IP autorizada
sudo ufw allow proto tcp from 192.168.90.2 to any port 80
sudo ufw allow proto tcp from 192.168.90.2 to any port 443
logger "HTTP/HTTPS habilitado por horario laboral"
