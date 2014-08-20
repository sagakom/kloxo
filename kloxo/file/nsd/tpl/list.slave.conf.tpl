<?php
	$path = "/opt/configs/nsd/conf/slave";
	$dirs = glob("{$path}/*");

	$str = '';

	foreach ($dirs as $d) {
		$d = str_replace("{$path}/", "", $d);
		$zone = "zone:\n    name: {$d}\n    zonefile: slave/{$d}\n\n";
		$str .= $zone;
	}

	$file = "/opt/configs/nsd/conf/defaults/nsd.slave.conf";

	file_put_contents($file, $str);
?>