<?php
try{
    $myPDO = new PDO("pgsql:host=173.16.6.2,dbname=simpad","simpad","simpad1!2@");
    //echo "string";
    
}catch(PDOException $e){
    echo $e->getMessage();
}
?>