<?php
$a = $_POST['txt_tgl'];
$aj = $_POST['jenis'];
$tgl1 = substr($a,0,10);
$tgl2 = substr($a,13);

if ($aj == 'r') {
	include "laporan_dtl_exe1.php";
}else if($aj == 'k'){
	include "laporan_dtl_exe2.php";
}else{
	echo "A tu";
}
?>