<?php
#exec ("kill `ps auxww | grep spoofhost | grep -v -e grep | awk '{print $1}'`");
exec("killall dnsspoof");
?>
<html><head>
<meta http-equiv="refresh" content="0; url=/pineapple/">
</head><body bgcolor="black" text="white"><pre>
<?php
echo "El conejito de la entrop&iacute;a deteniendo el spoofing de DNS...";
?>
</pre></head></body>
