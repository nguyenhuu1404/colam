<?php
require_once 'hls-config.php';
$file = $_REQUEST['file'];
$folder = $_REQUEST['folder'];
$time = $_REQUEST['time'];
$token = $_REQUEST['token'];
if($token !== md5("ts.$time.$folder.$file")) {
	die('Token Error');
}
echo file_get_contents(STREAM_DIR . '/' . $folder . '/' . $file . '.ts');
