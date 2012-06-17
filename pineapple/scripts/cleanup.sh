#!/bin/sh
logger "CLEANUP: Clean-up Script Executed"

# ------------------------------------------------------------------------------------
# El siguiente snippet trunca el log de Karma s� se acerca al umbral.
# TMPFS es de casi 12MB. Para logs de Karma m�s grandes considere almacenamiento USB.
# ------------------------------------------------------------------------------------

# q = threshold in bytes
q=5242880
w=`ls -la /tmp/karma.log | awk '{print $5}'`
if [ $w -ge $q ]; then
	logger "CLEANUP: Log de Karma sobre el umbral, truncando log..."
	echo "KARMA: Log truncado por cleanup.sh para prevenir p�rdida de memoria." > /tmp/karma.log

	# ---------------------------------------------------------
	# Considere mover los logs a una unidad USB de ser posible
	# ---------------------------------------------------------
else
	logger "CLEANUP: Karma log looking good"
fi


# ---------------------------------------------------------------------------------------
# El siguiente snippet descartar� caches si la memoria es cr�tica. 
# Bajo circunstancias normales esto no deber�a ser problema pero en caso de que as� sea, 
# esto deber�a liberar memoria suficiente para evitar el reinicio del dispositivo.
# ---------------------------------------------------------------------------------------

# t = threshold in bytes
t=2048
g=`free | grep Mem | awk '{print $4}'`
if [ $g -ge $t ]; then
	logger "CLEANUP: la memoria se v� bien."
else
	logger "CLEANUP: memoria debajo de umbral, descartando pagecache, dentries e �nodos"
	sync
	echo 3 > /proc/sys/vm/drop_caches
fi


