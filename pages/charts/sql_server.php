<?php
try{
	$conn = new PDO("sqlsrv:Server=192.168.10.4;Database=V@LID49SKL_2016","usadi","valid49");
	//$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(Exception $e){
	die(print_r($e->getMessage()));
}
$tsql = "select * from BEND order by NIP ASC";
//$result=$conn->prepare($tsql);
//$result->execute();
//$results=$result->fetchAll(PDO::FETCH_BOTH);

//foreach($results as $row){
//	echo $row['NIP'].'<br> '.$row['SALDOBEND'];
//	echo "<br> <hr>";
//}
foreach ($conn->query($tsql) as $row) {
	echo $row['NIP'].'<br> '.$row['SALDOBEND'];
	echo "<br> <hr>";
}
?>