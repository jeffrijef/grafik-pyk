<?php

$c= date("Y");
$cc= date("Y", strtotime('+1 year'));
$ccc= date("Y", strtotime('-1 year'));
$ajan= $c.'-01-01';$ajan2= $ccc.'-01-01';
$afeb= $c.'-02-01';$afeb2= $ccc.'-02-01';
$amar= $c.'-03-01';$amar2= $ccc.'-03-01';
$aapr= $c.'-04-01';$aapr2= $ccc.'-04-01';
$amei= $c.'-05-01';$amei2= $ccc.'-05-01';
$ajun= $c.'-06-01';$ajun2= $ccc.'-06-01';
$ajul= $c.'-07-01';$ajul2= $ccc.'-07-01';
$aagu= $c.'-08-01';$aagu2= $ccc.'-08-01';
$asep= $c.'-09-01';$asep2= $ccc.'-09-01';
$aokt= $c.'-10-01';$aokt2= $ccc.'-10-01';
$anov= $c.'-11-01';$anov2= $ccc.'-11-01';
$ades= $c.'-12-01';$ades2= $ccc.'-12-01';
$newyear = $cc.'-01-01';$oldyear = $c.'-01-01';
$cd = date("Y-m").'-01';
$cd2 = date('Y-m', strtotime('+1 month')).'-01';

include 'db_con.php';
// bulanan 

$querybulan = "select sum(pokok_pajak) as total_pokok_pajak, tgl_bayar from air_tanah.pembayaran where tgl_bayar >= '$cd' and tgl_bayar < '$cd2' group by tgl_bayar order by tgl_bayar asc";

$query1a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ajan' and tgl_bayar < '$afeb'";
$query2a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$afeb' and tgl_bayar < '$amar'";
$query3a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$amar' and tgl_bayar < '$aapr'";
$query4a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$aapr' and tgl_bayar < '$amei'";
$query5a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$amei' and tgl_bayar < '$ajun'";
$query6a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ajun' and tgl_bayar < '$ajul'";
$query7a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ajul' and tgl_bayar < '$aagu'";
$query8a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$aagu' and tgl_bayar < '$asep'";
$query9a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$asep' and tgl_bayar < '$aokt'";
$query10a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$aokt' and tgl_bayar < '$anov'";
$query11a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$anov' and tgl_bayar < '$ades'";
$query12a ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ades' and tgl_bayar < '$newyear'";

$query1a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ajan2' and tgl_bayar < '$afeb2'";
$query2a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$afeb2' and tgl_bayar < '$amar2'";
$query3a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$amar2' and tgl_bayar < '$aapr2'";
$query4a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$aapr2' and tgl_bayar < '$amei2'";
$query5a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$amei2' and tgl_bayar < '$ajun2'";
$query6a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ajun2' and tgl_bayar < '$ajul2'";
$query7a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ajul2' and tgl_bayar < '$aagu2'";
$query8a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$aagu2' and tgl_bayar < '$asep2'";
$query9a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$asep2' and tgl_bayar < '$aokt2'";
$query10a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$aokt2' and tgl_bayar < '$anov2'";
$query11a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$anov2' and tgl_bayar < '$ades2'";
$query12a2 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar >= '$ades2' and tgl_bayar < '$oldyear'";

//v1
    //query 1
        foreach ($myPDO->query($query1a) as $row) {
            $b1a=$row['total_pokok_pajak'];
        }
    //query 2
        foreach ($myPDO->query($query2a) as $row) {
            $b2a=$row['total_pokok_pajak'];
        }
    //query 3
        foreach ($myPDO->query($query3a) as $row) {
            $b3a=$row['total_pokok_pajak'];
        }
    //query 4
        foreach ($myPDO->query($query4a) as $row) {
            $b4a=$row['total_pokok_pajak'];
        }
    //query 5
        foreach ($myPDO->query($query5a) as $row) {
            $b5a=$row['total_pokok_pajak'];
        }
    //query 6
        foreach ($myPDO->query($query6a) as $row) {
            $b6a=$row['total_pokok_pajak'];
        }
    //query 7
        foreach ($myPDO->query($query7a) as $row) {
            $b7a=$row['total_pokok_pajak'];
        }
    //query 8
        foreach ($myPDO->query($query8a) as $row) {
            $b8a=$row['total_pokok_pajak'];
        }
    //query 9
        foreach ($myPDO->query($query9a) as $row) {
            $b9a=$row['total_pokok_pajak'];
        }
    //query 10
        foreach ($myPDO->query($query10a) as $row) {
            $b10a=$row['total_pokok_pajak'];
        }
    //query 11
        foreach ($myPDO->query($query11a) as $row) {
            $b11a=$row['total_pokok_pajak'];
        }
    //query 12
        foreach ($myPDO->query($query12a) as $row) {
            $b12a=$row['total_pokok_pajak'];
        }

//v2
    //query 1
        foreach ($myPDO->query($query1a2) as $row) {
            $b1a2=$row['total_pokok_pajak'];
        }
    //query 2
        foreach ($myPDO->query($query2a2) as $row) {
            $b2a2=$row['total_pokok_pajak'];
        }
    //query 3
        foreach ($myPDO->query($query3a2) as $row) {
            $b3a2=$row['total_pokok_pajak'];
        }
    //query 4
        foreach ($myPDO->query($query4a2) as $row) {
            $b4a2=$row['total_pokok_pajak'];
        }
    //query 5
        foreach ($myPDO->query($query5a2) as $row) {
            $b5a2=$row['total_pokok_pajak'];
        }
    //query 6
        foreach ($myPDO->query($query6a2) as $row) {
            $b6a2=$row['total_pokok_pajak'];
        }
    //query 7
        foreach ($myPDO->query($query7a2) as $row) {
            $b7a2=$row['total_pokok_pajak'];
        }
    //query 8
        foreach ($myPDO->query($query8a2) as $row) {
            $b8a2=$row['total_pokok_pajak'];
        }
    //query 9
        foreach ($myPDO->query($query9a2) as $row) {
            $b9a2=$row['total_pokok_pajak'];
        }
    //query 10
        foreach ($myPDO->query($query10a2) as $row) {
            $b10a2=$row['total_pokok_pajak'];
        }
    //query 11
        foreach ($myPDO->query($query11a2) as $row) {
            $b11a2=$row['total_pokok_pajak'];
        }
    //query 12
        foreach ($myPDO->query($query12a2) as $row) {
            $b12a2=$row['total_pokok_pajak'];
        }
    $a20 = array(
        $b1a,
        $b2a,
        $b3a,
        $b4a,
        $b5a,
        $b6a,
        $b7a,
        $b8a,
        $b9a,
        $b10a,
        $b11a,
        $b12a);
    $a19 = array(
        $b1a2,
        $b2a2,
        $b3a2,
        $b4a2,
        $b5a2,
        $b6a2,
        $b7a2,
        $b8a2,
        $b9a2,
        $b10a2,
        $b11a2,
        $b12a2);

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="../../logo-kota.png">
  <title>Badan Keuangan Daerak Kota Payakumbuh</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
 
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  
  <?php 
  include "menu1.php";
  include "menu.php";
  ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Pajak Air Tanah</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <!-- AREA CHART -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">2019 & 2020</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="areaChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card --><!-- BAR CHART -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Perkembangan bulan ini</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col (RIGHT) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include "kaki.php"; ?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Add Content Here -->
  </aside>
  <!-- /.control-sidebar -->
</div>



<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../../plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */

    //--------------
    //- AREA CHART -
    //--------------

    // Get context with jQuery - using jQuery's .get() method.
    var areaChartCanvas = $('#areaChart').get(0).getContext('2d')

    var areaChartData = {
      labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July','Agust', 'September','October','November','December'],
      datasets: [
        {
          label               : 'Data 2019',
          backgroundColor     : 'rgba(210, 214, 222, 1)',
          borderColor         : 'rgba(210, 214, 222, 1)',
          pointRadius         : false,
          pointColor          : 'rgba(210, 214, 222, 1)',
          pointStrokeColor    : '#c1c7d1',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(220,220,220,1)',
          data                : [<?php 
                                  for($x=0;$x<count($a19);$x++){
                                  echo '"'.$a19[$x].'",';
                                  }
                                ?>]
        },
        {
          label               : 'Data 2020',
          backgroundColor     : 'rgba(60,141,188,0.9)',
          borderColor         : 'rgba(60,141,188,0.8)',
          pointRadius          : false,
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          data                : [<?php 
                                  for($x=0;$x<count($a20);$x++){
                                  echo '"'.$a20[$x].'",';
                                  }
                                ?>]
        },
      ]
    }

    var areaChartOptions = {
      maintainAspectRatio : false,
      responsive : true,
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
          gridLines : {
            display : false,
          }
        }],
        yAxes: [{
          gridLines : {
            display : false,
          }
        }]
      }
    }

    // This will get the first returned node in the jQuery collection.

    var areaChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }
    var areaChart       = new Chart(areaChartCanvas, { 
      type: 'bar',
      data: areaChartData, 
      options: areaChartOptions
    })


    //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart').get(0).getContext('2d')

    var barChartData = {
      labels  : [<?php 
                foreach ($myPDO->query($querybulan) as $row) {
                  echo '"'.$row['tgl_bayar'].'",';
                }
                ?>],
      datasets: [
        {
          label               : 'Data 2020',
          backgroundColor     : 'rgba(34, 139, 35,0.9)',
          borderColor         : 'rgba(34, 139, 35,0.8)',
          pointRadius          : false,
          pointColor          : '#0a4',
          pointStrokeColor    : 'rgba(34, 139, 35,1)',
          pointHighlightFill  : '#0a4',
          pointHighlightStroke: 'rgba(34, 139, 35,1)',
          data                : [<?php 
                                foreach ($myPDO->query($querybulan) as $row) {
                                  echo '"'.$row['total_pokok_pajak'].'",';
                                }
                                ?>]
        },
      ]
    }

    var barChartOptions = {
      maintainAspectRatio : false,
      responsive : true,
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
          gridLines : {
            display : false,
          }
        }],
        yAxes: [{
          gridLines : {
            display : false,
          }
        }]
      }
    }

    // This will get the first returned node in the jQuery collection.

    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }
    var barChart       = new Chart(barChartCanvas, { 
      type: 'bar',
      data: barChartData, 
      options: barChartOptions
    })

    
  })
</script>
</body>
</html>
