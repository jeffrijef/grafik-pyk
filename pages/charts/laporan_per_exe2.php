<?php
//$a = $_POST['txt_tgl'];
//$b = $_POST['op'];
//$tgl1 = substr($a,0,10);
//$tgl2 = substr($a,13);
include 'db_con.php';
try{
	$conn = new PDO("sqlsrv:Server=192.168.10.7;Database=V@LID49V6_2020","usadi","valid49");
	//$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(Exception $e){
	die(print_r($e->getMessage()));
}


if ($b == 'A') {
	$nama = 'Pajak Air Tanah';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from air_tanah.pembayaran as a inner join simpad.air_tanah.skp as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'B'){
	$nama = 'Pajak Reklame';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from reklame.pembayaran as a inner join simpad.reklame.skp as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'C'){
	$nama = 'Pajak Restoran';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from restoran.pembayaran as a inner join simpad.restoran.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'D'){
	$nama = 'Pajak Penerangan Jalan';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from ppj.pembayaran as a inner join simpad.ppj.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'E'){
	$nama = 'Pajak Parkir';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from parkir.pembayaran as a inner join simpad.parkir.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'F'){
	$nama = 'Pajak Hiburan';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from hiburan.pembayaran as a inner join simpad.hiburan.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'G'){
	$nama = 'Pajak Hotel';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from hotel.pembayaran as a inner join simpad.hotel.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'H'){
	$nama = 'Pajak PMBLB';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from galianc.pembayaran as a inner join simpad.galianc.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_keg_usaha and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'I'){
	$nama = 'Pajak BPHTB';
	$query_bayar1 = "select c.nm_keg_usaha as nm_keg, sum(a.pokok_pajak) as pokok_pajak from bphtb.pembayaran as a inner join simpad.bphtb.sspd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak inner join simpad.public.keg_usaha as c on c.kd_keg_usaha=b.kd_sh and c.kd_obj_pajak=a.kd_obj_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2' group by c.kd_keg_usaha,c.kd_obj_pajak";
}else if ($b == 'J'){

$a = $tgl1;
  $b = $tgl2;

  $nama="RETRIBUSI JASA UMUM";
  $total_tr=0;
  $total_sdh=0;
  $total_h=0;
  $total_p=0;
$tsql = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='737_'";
  $tsql2 = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='740_'";
  $tsql3 = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='741_'";
  $tsql4 = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='742_'";
  $tsql5 = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='743_'";
  $tsql6 = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='746_'";
  $tsql7 = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='7468_'";
  $tsql8 = "select sum(SUBTOTAL) as target from DASKDETD where MTGKEY='8383_'";

  $sdhsql = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='737_'";
  $sdhsql2 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='740_'";
  $sdhsql3 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='741_'";
  $sdhsql4 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='742_'";
  $sdhsql5 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='743_'";
  $sdhsql6 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='746_'";
  $sdhsql7 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='7468_'";
  $sdhsql8 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='8383_'";

  $hsql = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='737_'";
  $hsql2 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='740_'";
  $hsql3 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='741_'";
  $hsql4 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='742_'";
  $hsql5 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='743_'";
  $hsql6 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='746_'";
  $hsql7 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='7468_'";
  $hsql8 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS='$b' AND MTGKEY ='8383_'";

foreach ($conn->query($tsql) as $row) {
  $a11 = substr($row['target'],0,-5);
  $namaa1 = "Pelayanan Persampahan/Kebersihan";
}
foreach ($conn->query($tsql2) as $row) {
  $a22 = substr($row['target'],0,-5);
  $namaa2 = "Pelayanan Parkir di tepi jalan umum";
}
foreach ($conn->query($tsql3) as $row) {
  $a33 = substr($row['target'],0,-5);
  $namaa3 = "Pelayanan Pasar";
}
foreach ($conn->query($tsql4) as $row) {
  $a44 = substr($row['target'],0,-5);
  $namaa4 = "Pengujian Kendaraan Bermotor";
}
foreach ($conn->query($tsql5) as $row) {
  //$a55 = substr($row['target'],0,-5);
  $a55 = 100;
  $namaa5 = "Pemeriksaan Alat Pemadam Kebakaran";
}
foreach ($conn->query($tsql6) as $row) {
  $a66 = substr($row['target'],0,-5);
  $namaa6 = "Penyediaan dan / atau penyedotan kakus";
}
foreach ($conn->query($tsql7) as $row) {
  //$a77 = substr($row['target'],0,-5);
  $a77=100;
  $namaa7 = "Pengendalian Menara Telekomunikasi";
}
foreach ($conn->query($tsql8) as $row) {
  $a88 = substr($row['target'],0,-5);
  $namaa8 = "Pelayanan Tera/Tera Ulang";
}

foreach ($conn->query($sdhsql) as $row) {
  $a111= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdhsql2) as $row) {
  $a222= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdhsql3) as $row) {
  $a333= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdhsql4) as $row) {
  $a444= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdhsql5) as $row) {
  $a555=10;
  //$a555= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdhsql6) as $row) {
  $a666= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdhsql7) as $row) {
  $a777=10;
  //$a777= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdhsql8) as $row) {
  $a888= substr($row['REALISASI'],0,-5);
}

foreach ($conn->query($hsql) as $row) {
  $a111a= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($hsql2) as $row) {
  $a222a= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($hsql3) as $row) {
  $a333a= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($hsql4) as $row) {
  $a444a= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($hsql5) as $row) {
  $a555a= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($hsql6) as $row) {
  $a666a= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($hsql7) as $row) {
  $a777a= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($hsql8) as $row) {
  $a888a= substr($row['REALISASI'],0,-5);
}
$persen=(($a111/$a11)*100);
$persen2=(($a222/$a22)*100);
$persen3=(($a333/$a33)*100);
$persen4=(($a444/$a44)*100);
$persen5=(($a555/$a55)*100);
$persen6=(($a666/$a66)*100);
$persen7=(($a777/$a77)*100);
$persen8=(($a888/$a88)*100);

$total_tr=$a11+$a22+$a33+$a44+$a66+$a88;
$total_sdh=$a111+$a222+$a333+$a444+$a666+$a888;
$total_h=$a111a+$a222a+$a333a+$a444a+$a666a+$a888a;
$total_p=($persen+$persen2+$persen3+$persen4+$persen6+$persen8)/6;


$saya = 1;

}else if ($b == 'K'){
	$a = $tgl1;
  $b = $tgl2;
$nama="RETRIBUSI JASA USAHA";
  $total_tr=0;
  $total_sdh=0;
  $total_h=0;
  $total_p=0;
$t2sql = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='748_'";
  $t2sql2 = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='749_'";
  $t2sql3 = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='750_'";
  $t2sql4 = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='751_'";
  $t2sql5 = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='752_'";
  $t2sql6 = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='755_'";
  $t2sql7 = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='757_'";
  $t2sql8 = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='760_'";

  $sdh2sql = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='748_'";
  $sdh2sql2 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='749_'";
  $sdh2sql3 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='750_'";
  $sdh2sql4 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='751_'";
  $sdh2sql5 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='752_'";
  $sdh2sql6 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='755_'";
  $sdh2sql7 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='757_'";
  $sdh2sql8 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='760_'";

  $h2sql = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='748_'";
  $h2sql2 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='749_'";
  $h2sql3 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='750_'";
  $h2sql4 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='751_'";
  $h2sql5 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='752_'";
  $h2sql6 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='755_'";
  $h2sql7 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='757_'";
  $h2sql8 = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='760_'";

  foreach ($conn->query($t2sql) as $row) {
  $a11usaha = substr($row['target'],0,-5);
  $nama11 = "Pemakaian Kekayaan Daerah";
}
foreach ($conn->query($t2sql2) as $row) {
  $a22usaha = substr($row['target'],0,-5);
  $nama22 = "Pasar Grosir / Pertokoan";
}
foreach ($conn->query($t2sql3) as $row) {
  $a33usaha = substr($row['target'],0,-5);
  $nama33 = "Tempat Pelelangan";
}
foreach ($conn->query($t2sql4) as $row) {
  $a44usaha = substr($row['target'],0,-5);
  $nama44 = "Terminal";
}
foreach ($conn->query($t2sql5) as $row) {
  $a55usaha = substr($row['target'],0,-5);
  $nama55 = "Tempat Khusus Parkir";
}
foreach ($conn->query($t2sql6) as $row) {
  $a66usaha = substr($row['target'],0,-5);
  $nama66 = "Rumah Potong Hewan";
}
foreach ($conn->query($t2sql7) as $row) {
  $a77usaha = substr($row['target'],0,-5);
  $nama77 = "Tempat Rekreasi dan Olahraga";
}
foreach ($conn->query($t2sql8) as $row) {
  $a88usaha = substr($row['target'],0,-5);
  $nama88 = "Penjualan Produksi Usaha Daerah";
}

foreach ($conn->query($sdh2sql) as $row) {
  $a111usaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdh2sql2) as $row) {
  $a222usaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdh2sql3) as $row) {
  $a333usaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdh2sql4) as $row) {
  $a444usaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdh2sql5) as $row) {
  $a555usaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdh2sql6) as $row) {
  $a666usaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdh2sql7) as $row) {
  $a777usaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($sdh2sql8) as $row) {
  $a888usaha= substr($row['REALISASI'],0,-5);
}

foreach ($conn->query($h2sql) as $row) {
  $a111ausaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($h2sql2) as $row) {
  $a222ausaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($h2sql3) as $row) {
  $a333ausaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($h2sql4) as $row) {
  $a444ausaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($h2sql5) as $row) {
  $a555ausaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($h2sql6) as $row) {
  $a666ausaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($h2sql7) as $row) {
  $a777ausaha= substr($row['REALISASI'],0,-5);
}
foreach ($conn->query($h2sql8) as $row) {
  $a888ausaha= substr($row['REALISASI'],0,-5);
}
$persenusaha=(($a111usaha/$a11usaha)*100);
$persen2usaha=(($a222usaha/$a22usaha)*100);
$persen3usaha=(($a333usaha/$a33usaha)*100);
$persen4usaha=(($a444usaha/$a44usaha)*100);
$persen5usaha=(($a555usaha/$a55usaha)*100);
$persen6usaha=(($a666usaha/$a66usaha)*100);
$persen7usaha=(($a777usaha/$a77usaha)*100);
$persen8usaha=(($a888usaha/$a88usaha)*100);

$total_tr=$a11usaha+$a22usaha+$a33usaha+$a44usaha+$a55usaha+$a66usaha+$a77usaha+$a88usaha;
$total_sdh=$a111usaha+$a222usaha+$a333usaha+$a444usaha+$a555usaha+$a666usaha+$a777usaha+$a888usaha;
$total_h=$a111ausaha+$a222ausaha+$a333ausaha+$a444ausaha+$a555ausaha+$a666ausaha+$a777ausaha+$a888ausaha;
$total_p=($persenusaha+$persen2usaha+$persen3usaha+$persen4usaha+$persen5usaha+$persen6usaha+$persen7usaha+$persen8usaha)/8;

$saya = 2;


}else if ($b == 'L'){
	$a = $tgl1;
  $b = $tgl2;
$nama="RETRIBUSI PERIZINAN TERTENTU";
  $total_tr=0;
  $total_sdh=0;
  $total_h=0;
  $total_p=0;
$t3sql = "SELECT SUM(SUBTOTAL) AS target FROM DASKDETD WHERE MTGKEY ='763_'";

  $sdh3sql = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS BETWEEN '$a' AND '$b' AND MTGKEY ='763_' ";

  $h3sql = "SELECT SUM(NILAI) AS REALISASI FROM RKMDETD A LEFT JOIN STS B ON A.NOSTS=B.NOSTS WHERE B.TGLSTS = '$b' AND MTGKEY ='763_' ";

  	foreach ($conn->query($t3sql) as $row) {
	  $a113 = substr($row['target'],0,-5);
	  $a13 = "Izin Mendirikan Bangunan";
	}

	foreach ($conn->query($sdh3sql) as $row) {
	  $a1113= substr($row['REALISASI'],0,-5);
	}

	foreach ($conn->query($h3sql) as $row) {
	  $a111a3= substr($row['REALISASI'],0,-5);
	}

	$persenn3=(($a1113/$a113)*100);

	$total_tr=$a113;
	$total_sdh=$a1113;
	$total_h=$a111a3;
	$total_p=($persenn3)/1;

  $saya = 3;
}

require_once("dompdf/autoload.inc.php");
use Dompdf\Dompdf;
$dompdf = new Dompdf();
$html = '<center><h1>Laporan Objek Pajak</h1><h3>'.$nama.'</h3></center> Tanggal : '.$tgl1.' s/d '.$tgl2.'<hr/><br>';
$i=1;
$html .= '<table border="0" width="100%">';

if ( $b == 'A' || $b == 'B' || $b == 'C' || $b == 'D' || $b == 'E' || $b == 'F' || $b == 'G' || $b == 'H' || $b == 'I'){

foreach ($myPDO->query($query_bayar1) as $row) {
	$html .= '<tr><td>'.$i.'.</td><td> '.$row['nm_keg'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td></tr>';
	$i++;
}
}else if( $b == 'J' || $b == 'K' || $b == 'L'){
	$html .= '<tr><td>Target Retribusi </td><td> : Rp. '.number_format($total_tr,2).'</td><td></td></tr>';
	$html .= '<tr><td>'.$tgl1.' s/d '.$tgl2.' </td><td> : Rp. '.number_format($total_sdh,2).'</td><td></td></tr>';
	$html .= '<tr><td>Persentase </td><td> : '.number_format($total_p,2).' %</td><td></td></tr>';
}else{
	$html .= '<tr><td>Target Retribusi </td><td> : Rp. '.number_format($total_tr,2).'</td><td></td></tr>';
	$html .= '<tr><td>Realisasi </td><td> : Rp. '.number_format($total_sdh,2).'</td><td></td></tr>';
	$html .= '<tr><td>Persentase </td><td> : '.number_format($total_p,2).' %</td><td></td></tr>';
  if ($saya == 1) {
    $html .= '<tr><td> <b>Dengan Detail  : </b> </h3></tr>';
    $html .= '<tr><td>1.</td><td><u>'.$namaa1.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a11,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a111,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen,'2',',','.').' % </td></tr>';
    $html .='<tr><td>2.</td><td><u>'.$namaa2.'</u></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a22,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a222,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen2,'2',',','.').' % </td></tr>';
    $html .='<tr><td>3.</td><td><u>'.$namaa3.'</u></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a33,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a333,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen3,'2',',','.').' % </td></tr>';
    $html .='<tr><td>4.</td><td><u>'.$namaa4.'</u></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a44,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a444,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen4,'2',',','.').' % </td></tr>';
    $html .='<tr><td>5.</td><td><u>'.$namaa6.'</u></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a66,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a666,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen6,'2',',','.').' % </td></tr>';
    $html .='<tr><td>6.</td><td><u>'.$namaa8.'</u></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a88,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a888,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen8,'2',',','.').' % </td></tr>';
  }else if ($saya == 2) {
    $html .= '<tr><td> <b>Dengan Detail  : </b> </h3></tr>';
    $html .= '<tr><td>1.</td><td><u>'.$nama11.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a11usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a111usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persenusaha,'2',',','.').' % </td></tr>';
    $html .= '<tr><td>2.</td><td><u>'.$nama22.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a22usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a222usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen2usaha,'2',',','.').' % </td></tr>';
    $html .= '<tr><td>3.</td><td><u>'.$nama33.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a33usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a333usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen3usaha,'2',',','.').' % </td></tr>';
    $html .= '<tr><td>4.</td><td><u>'.$nama44.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a44usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a444usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen4usaha,'2',',','.').' % </td></tr>';
    $html .= '<tr><td>5.</td><td><u>'.$nama55.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a55usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a555usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen5usaha,'2',',','.').' % </td></tr>';
    $html .= '<tr><td>6.</td><td><u>'.$nama66.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a66usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a666usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen6usaha,'2',',','.').' % </td></tr>';
    $html .= '<tr><td>7.</td><td><u>'.$nama77.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a77usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a777usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen7usaha,'2',',','.').' % </td></tr>';
    $html .= '<tr><td>8.</td><td><u>'.$nama88.'</u></td></tr><tr><td></td><td>Target Retribusi </td><td>: Rp. '.number_format($a88usaha,'2',',','.').'</td></tr><tr><td></td><td> Realisasi </td><td>: Rp. '.number_format($a888usaha,'2',',','.').'</td></tr><tr><td></td><td>Persentase </td><td> : '.number_format($persen8usaha,'2',',','.').' % </td></tr>';
  }
}

$html .= "</html>";
$dompdf->loadHtml($html);
// Setting ukuran dan orientasi kertas
$dompdf->setPaper('A4', 'potrait');
// Rendering dari HTML Ke PDF
$dompdf->render();
// Melakukan output file Pdf
$dompdf->stream('laporan_'.$nama.'_'.$a.'.pdf');
?>