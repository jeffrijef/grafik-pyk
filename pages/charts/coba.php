<?php
try{
	$conn = new PDO("sqlsrv:Server=192.168.10.7;Database=V@LID49V6_2020","usadi","valid49");
	//$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(Exception $e){
	die(print_r($e->getMessage('bisa')));
}
?>