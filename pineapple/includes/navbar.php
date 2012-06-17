<div class=navbar>
| <a href="/pineapple/index.php"><font color="black"><b>Estado</b></font></a> | 
<a href="/pineapple/index.php?config"><font color="black"><b>Configuraci&oacute;n</b></font></a> | 
<a href="/pineapple/index.php?advanced"><font color="black"><b>Avanzado</b></font></a> | 
<a href="/pineapple/index.php?usb"><font color="black"><b>USB</b></font></a> | 
<a href="/pineapple/index.php?jobs"><font color="black"><b>Tareas</b></font></a> | 
<a href="/pineapple/index.php?3g"><font color="black"><b>3G</b></font></a> | 
<a href="/pineapple/index.php?ssh"><font color="black"><b>SSH</b></font></a> | 
<a href="/pineapple/index.php?scripts"><font color="black"><b>Scripts</b></font></a> | 
<a href="/pineapple/index.php?logs"><font color="black"><b>Logs</b></font></a> | 
<a href="/pineapple/index.php?upgrade"><font color="black"><b>Actualizar</b></font></a> | 
<a href="/pineapple/index.php?resources"><font color="black"><b>Recursos</b></font></a> | 
<a href="/pineapple/index.php?modules"><font color="black"><b>Pi&ntilde;a Bar</b></font></a> | 
<a href="/pineapple/index.php?about"><font color="black"><b>Acerca de</b></font></a> |

<?php
$moduleLinks = explode("\n", file_get_contents("/www/pineapple/includes/moduleNav"));
foreach($moduleLinks as $link){
	if($link != "")	echo "| ".$link." ";
}
?>
</div>
