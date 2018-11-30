<?php
require_once 'hls-config.php';
$folder = $_REQUEST['folder'];
$file = $_REQUEST['file'];
$time = $_REQUEST['time'];
$token = $_REQUEST['token'];
if(time() - $time > 3) {
die('Expired');
}
if($token !== md5("tk.$time.$folder.$file")) {
die('Wrong token');
}
if(file_exists(STREAM_DIR . '/' .$folder . '/' . $file . '_master.m3u8'))
	$m3u8File = file_get_contents(STREAM_DIR . '/' .$folder . '/' . $file . '_master.m3u8');
else
	$m3u8File = file_get_contents(STREAM_DIR . '/' .$folder . '/' . $file . '.m3u8');

$content = preg_replace_callback('/('.preg_quote($file).'_[\d]+)\.m3u8/', function($matches) {
	$time = $_REQUEST['time'];
	$folder = $_REQUEST['folder'];
	return BASE_URL . '/hls-'.$folder.'-'.$matches[1].'-'.$time.'-'.md5("tk.$time.$folder.{$matches[1]}"). '-playlist.m3u8';
}, $m3u8File);

$content = preg_replace_callback('/('.preg_quote($file).'_[\d]+)\.ts/', function($matches) {
	$time = $_REQUEST['time'];
	$folder = $_REQUEST['folder'];
	return BASE_URL . '/' . $folder .'-'. $matches[1].'-'.$time.'-'.md5("ts.$time.$folder.{$matches[1]}") . '.ts';
}, $content);
$strippedFile = preg_replace('/_[\d]+/', '', $file);
$content = str_replace($strippedFile.'.key', BASE_URL.'/videos/'.$folder . '/' . $strippedFile . '.key', $content);
echo $content;
?>
