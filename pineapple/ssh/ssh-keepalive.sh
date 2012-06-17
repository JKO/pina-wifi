#!/bin/sh
# --------------------------------------------------------------------------------------
# Script simple que verifica si SSH est� conectado y lo reinicia en caso que no lo est�.
# --------------------------------------------------------------------------------------
logger "SSH: Script de conexi�n persistente ejecutado"
if ! ( pidof autossh); then
	/www/pineapple/ssh/ssh-connect.sh &
	logger "SSH: La conexi�n parece inactiva. Se ha ejecutado /www/pineapple/ssh/ssh-connect.sh"
else
	logger "SSH: La conexi�n parece activa."
fi
