#!/bin/sh
# --------------------------------------------------------------
# Verifica si la conexi�n 3G / WAN est� activa y la sube si no lo est�..
# --------------------------------------------------------------

SERVER="8.8.8.8" # Este es el servidor DNS de Google's DNS server - si est� caido tenemos graves problemas
logger "3G: Script de persistencia ejecutado."

if ! ( ifconfig 3g-wan2); then
	logger "3G: La interfaz 3g-wan2 parece inactiva. Ejecutando de nuevo el script de conexi�n 3g..."
	/www/pineapple/3g/3g.sh
else
	logger "3G: La interfaz 3g-wan2 parece activa."

	if ! ( ping -q -c 1 -W 10 $SERVER > /dev/null || ping -q -c 1 -W 10 $SERVER > /dev/null || ping -q -c 1 -W 10 $SERVER > /dev/null ); then
		logger "3G: Interfaz 3g-wan2 arriba sin embargo la conexi�n a Internet parece estar caida. El modem se encuentra activado? Ha tratado de desconectarlo y reconectarlo de nuevo?"
		logger "3G: Intentando ifup wan2. Esperando que esto resuelva el problema."
		ifup wan2
		
	else
		logger "3G: Interfaz 3g-wan2 arriba y la conexi�n a Internet parece estar activa. w00t!"
	fi
fi
