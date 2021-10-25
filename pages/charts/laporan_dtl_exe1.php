<?php

include 'db_con.php';
$query_bayar1 = "select * from air_tanah.pembayaran as a inner join air_tanah.skp as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar2 = "select * from reklame.pembayaran as a inner join reklame.skp as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar3 = "select * from restoran.pembayaran as a inner join restoran.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar4 = "select * from ppj.pembayaran as a inner join ppj.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar5 = "select * from parkir.pembayaran as a inner join parkir.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar6 = "select * from hiburan.pembayaran as a inner join hiburan.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar7 = "select * from hotel.pembayaran as a inner join hotel.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar8 = "select * from galianc.pembayaran as a inner join galianc.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";
$query_bayar9 = "select * from bphtb.pembayaran as a inner join bphtb.sspd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar >= '$tgl1' and a.tgl_bayar <= '$tgl2'";



try{
	$conn = new PDO("sqlsrv:Server=192.168.10.7;Database=V@LID49V6_2020","usadi","valid49");
	//$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(Exception $e){
	die(print_r($e->getMessage()));
}

  $a = $tgl1;
  $b = $tgl2;

  $nama="RETRIBUSI JASA UMUM";
  $total_tr=0;
  $total_sdh=0;
  $total_h=0;
  $total_p=0;

  $nama2="RETRIBUSI JASA USAHA";
  $total_tr2=0;
  $total_sdh2=0;
  $total_h2=0;
  $total_p2=0;

  $nama3="RETRIBUSI PERIZINAN TERTENTU";
  $total_tr3=0;
  $total_sdh3=0;
  $total_h3=0;
  $total_p3=0;

  // query sql_server2

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
  $a1 = "Pelayanan Persampahan/Kebersihan";
}
foreach ($conn->query($tsql2) as $row) {
  $a22 = substr($row['target'],0,-5);
  $a2 = "Pelayanan Parkir di tepi jalan umum";
}
foreach ($conn->query($tsql3) as $row) {
  $a33 = substr($row['target'],0,-5);
  $a3 = "Pelayanan Pasar";
}
foreach ($conn->query($tsql4) as $row) {
  $a44 = substr($row['target'],0,-5);
  $a4 = "Pengujian Kendaraan Bermotor";
}
foreach ($conn->query($tsql5) as $row) {
  //$a55 = substr($row['target'],0,-5);
  $a55 = 100;
  $a5 = "Pemeriksaan Alat Pemadam Kebakaran";
}
foreach ($conn->query($tsql6) as $row) {
  $a66 = substr($row['target'],0,-5);
  $a6 = "Penyediaan dan / atau penyedotan kakus";
}
foreach ($conn->query($tsql7) as $row) {
  //$a77 = substr($row['target'],0,-5);
  $a77=100;
  $a7 = "Pengendalian Menara Telekomunikasi";
}
foreach ($conn->query($tsql8) as $row) {
  $a88 = substr($row['target'],0,-5);
  $a8 = "Pelayanan Tera/Tera Ulang";
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

  // query sql_server1

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
  $a1usaha = "Pemakaian Kekayaan Daerah";
}
foreach ($conn->query($t2sql2) as $row) {
  $a22usaha = substr($row['target'],0,-5);
  $a2usaha = "Pasar Grosir / Pertokoan";
}
foreach ($conn->query($t2sql3) as $row) {
  $a33usaha = substr($row['target'],0,-5);
  $a3usaha = "Tempat Pelelangan";
}
foreach ($conn->query($t2sql4) as $row) {
  $a44usaha = substr($row['target'],0,-5);
  $a4usaha = "Terminal";
}
foreach ($conn->query($t2sql5) as $row) {
  $a55usaha = substr($row['target'],0,-5);
  $a5usaha = "Tempat Khusus Parkir";
}
foreach ($conn->query($t2sql6) as $row) {
  $a66usaha = substr($row['target'],0,-5);
  $a6usaha = "Rumah Potong Hewan";
}
foreach ($conn->query($t2sql7) as $row) {
  $a77usaha = substr($row['target'],0,-5);
  $a7usaha = "Tempat Rekreasi dan Olahraga";
}
foreach ($conn->query($t2sql8) as $row) {
  $a88usaha = substr($row['target'],0,-5);
  $a8usaha = "Penjualan Produksi Usaha Daerah";
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

$total_tr2=$a11usaha+$a22usaha+$a33usaha+$a44usaha+$a55usaha+$a66usaha+$a77usaha+$a88usaha;
$total_sdh2=$a111usaha+$a222usaha+$a333usaha+$a444usaha+$a555usaha+$a666usaha+$a777usaha+$a888usaha;
$total_h2=$a111ausaha+$a222ausaha+$a333ausaha+$a444ausaha+$a555ausaha+$a666ausaha+$a777ausaha+$a888ausaha;
$total_p2=($persenusaha+$persen2usaha+$persen3usaha+$persen4usaha+$persen5usaha+$persen6usaha+$persen7usaha+$persen8usaha)/8;

  // query sql_server3

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

	$persen3=(($a1113/$a113)*100);

	$total_tr3=$a113;
	$total_sdh3=$a1113;
	$total_h3=$a111a3;
	$total_p3=($persen3)/1;

	$array_total=array(
		array("<tr><td>1.</td><td><b>".$nama."</b></tr>","<tr><td></td><td>Target Retribusi </td><td>: Rp. ".number_format($total_tr,'2',',','.')."</td></tr>","<tr><td></td><td> Realisasi </td><td>: Rp. ".number_format($total_sdh,'2',',','.')."</td></tr>","<tr><td></td><td>Persentase </td><td> : ".number_format($total_p,'2',',','.')." % </td></tr><tr><td></td></tr><tr><td></td></tr>"),
		array("<tr><td>1.</td><td><b>".$nama2."</b></tr>","<tr><td></td><td>Target Retribusi </td><td>: Rp. ".number_format($total_tr2,'2',',','.')."</td></tr>","<tr><td></td><td> Realisasi </td><td>: Rp. ".number_format($total_sdh2,'2',',','.')."</td></tr>","<tr><td></td><td>Persentase </td><td> : ".number_format($total_p2,'2',',','.')." % </td></tr><tr><td></td></tr><tr><td></td></tr>"),
		array("<tr><td>1.</td><td><b>".$nama3."</b></tr>","<tr><td></td><td>Target Retribusi </td><td>: Rp. ".number_format($total_tr3,'2',',','.')."</td></tr>","<tr><td></td><td> Realisasi </td><td>: Rp. ".number_format($total_sdh3,'2',',','.')."</td></tr>","<tr><td></td><td>Persentase </td><td> : ".number_format($total_p3,'2',',','.')." % </td></tr>")
	);



require_once("dompdf/autoload.inc.php");
use Dompdf\Dompdf;
$dompdf = new Dompdf();
$html = '<center><h1>Laporan Objek Pajak</h1></center> Tanggal : '.$tgl1.' s/d '.$tgl2.'<hr/><br>';
$i=1;$i2=1;$i3=1;$i4=1;$i5=1;$i6=1;$i7=1;$i8=1;$i9=1;
$html .= '<table border="0" width="100%">';
$html .= '<tr><td></td><td><h3>Pajak Air Tanah</h3></td></tr>';

foreach ($myPDO->query($query_bayar1) as $row) {
	$html .= '<tr><td width=20>'.$i.'.</td><td width="300"> '.$row['nm_usaha'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i++;
}
$html .= '<tr><td></td><td><h3>Pajak Reklame</h3></td></tr>';
foreach ($myPDO->query($query_bayar2) as $row) {
	$html .= '<tr><td width=20>'.$i2.'.</td><td width="300"> '.$row['nm_reklame'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i2++;
}
$html .= '<tr><td></td><td><h3>Pajak Restoran</h3></td></tr>';
foreach ($myPDO->query($query_bayar3) as $row) {
	$html .= '<tr><td width=20>'.$i3.'.</td><td width="300"> '.$row['nm_usaha'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i3++;
}
$html .= '<tr><td></td><td><h3>Pajak Penerangan Jalan</h3></td></tr>';
foreach ($myPDO->query($query_bayar4) as $row) {
	$html .= '<tr><td width=20>'.$i4.'.</td><td width="300"> '.$row['nm_usaha'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i4++;
}
$html .= '<tr><td></td><td><h3>Pajak Parkir</h3></td></tr>';
foreach ($myPDO->query($query_bayar5) as $row) {
	$html .= '<tr><td width=20>'.$i5.'.</td><td width="300"> '.$row['nm_usaha'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i5++;
}
$html .= '<tr><td></td><td><h3>Pajak Hiburan</h3></td></tr>';
foreach ($myPDO->query($query_bayar6) as $row) {
	$html .= '<tr><td width=20>'.$i6.'.</td><td width="300"> '.$row['nm_usaha'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i6++;
}
$html .= '<tr><td></td><td><h3>Pajak Hotel</h3></td></tr>';
foreach ($myPDO->query($query_bayar7) as $row) {
	$html .= '<tr><td width=20>'.$i7.'.</td><td width="300"> '.$row['nm_usaha'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i7++;
}
$html .= '<tr><td></td><td><h3>Pajak PMBLB</h3></td></tr>';
foreach ($myPDO->query($query_bayar8) as $row) {
	$html .= '<tr><td width=20>'.$i8.'.</td><td width="300"> '.$row['nm_usaha'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i8++;
}
$html .= '<tr><td></td><td><h3>Pajak BPHTB</h3></td></tr>';
foreach ($myPDO->query($query_bayar9) as $row) {
	$html .= '<tr><td width=20>'.$i9.'.</td><td width="300"> '.$row['nama_sppt'].'</td><td> Rp. '.number_format($row['pokok_pajak'],2).'</td><td>'.$row['tgl_bayar'].'</td></tr>';
	$i9++;
}
$html .= '<tr><td></td></tr><tr><td></td></tr>';
          $ii=0;
          for ($i=0; $i < 3 ; $i++) { 
       
                  for ($col=0; $col<4 ; $col++) { 
                    $html.=$array_total[$i][$col]."<br>";
                  }
          }
 
$html .= "</html>";
$dompdf->loadHtml($html);
// Setting ukuran dan orientasi kertas
$dompdf->setPaper('A4', 'potrait');
// Rendering dari HTML Ke PDF
$dompdf->render();
// Melakukan output file Pdf
$dompdf->stream('laporan_'.$a.'.pdf');
?>