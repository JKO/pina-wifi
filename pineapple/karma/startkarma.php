<?php
exec ("echo '' > /tmp/karma.log");
exec ("rm -rf logs/associations.log");
exec ("echo /www/pineapple/karma/startkarma.sh | at now");
exec ("echo /www/pineapple/karma/update-associations.sh | at now");
?>
<html><head>
<meta http-equiv="refresh" content="2; url=../wait.php">
</head><body bgcolor="black" text="white"><pre>
<?php
echo "El conejito de la entrop&iacute;a ha sido activado.";
?>
</pre></head></body>
