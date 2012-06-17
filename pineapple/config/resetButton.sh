#!/bin/sh
#Script para agregar / remover el bot�n reset
#Reset es marcado como WPS (incorrecto)

if [ $1 == "enable" ]
then

uci add system button
uci set system.@button[3].button=wps
uci set system.@button[3].action=released
uci set system.@button[3].handler='cp /etc/config/backup/* /etc/config/ && reboot'
uci set system.@button[3].min=5
uci set system.@button[3].max=10
uci commit system

fi

if [ $1 == "disable" ]
then
uci delete system.@button[3]
uci commit system
fi
