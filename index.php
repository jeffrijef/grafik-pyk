<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
<link rel="icon" href="logo-kota.png">
  <title>Badan Keuangan Daerah Kota Payakumbuh</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to to the body tag
to get the desired effect
|---------------------------------------------------------|
|LAYOUT OPTIONS | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
 
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php 
  include "menu1.php";
  include "menu.php";
  include "pages/charts/con_sql_server.php";

  $c= date("Y");
  $a= $c.'-01-01';
  $b= date("Y-m-d");
  //$b='2020-03-18';

  include 'pages/charts/db_con.php';


  $query1 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='01'";
  $query11 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar between '$a' and '$b'";
  $query111 ="select sum(pokok_pajak) as total_pokok_pajak from air_tanah.pembayaran where tgl_bayar='$b'";
  $query2 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='02'";
  $query22 ="select sum(pokok_pajak) as total_pokok_pajak from reklame.pembayaran where tgl_bayar between '$a' and '$b'";
  $query222 ="select sum(pokok_pajak) as total_pokok_pajak from reklame.pembayaran where tgl_bayar='$b'";
  $query3 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='03'";
  $query33 ="select sum(pokok_pajak) as total_pokok_pajak from restoran.pembayaran where tgl_bayar between '$a' and '$b'";
  $query333 ="select sum(pokok_pajak) as total_pokok_pajak from restoran.pembayaran where tgl_bayar='$b'";
  $query4 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='04'";
  $query44 ="select sum(pokok_pajak) as total_pokok_pajak from ppj.pembayaran where tgl_bayar between '$a' and '$b'";
  $query444 ="select sum(pokok_pajak) as total_pokok_pajak from ppj.pembayaran where tgl_bayar='$b'";
  $query5 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='05'";
  $query55 ="select sum(pokok_pajak) as total_pokok_pajak from parkir.pembayaran where tgl_bayar between '$a' and '$b'";
  $query555 ="select sum(pokok_pajak) as total_pokok_pajak from parkir.pembayaran where tgl_bayar='$b'";
  $query6 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='06'";
  $query66 ="select sum(pokok_pajak) as total_pokok_pajak from hiburan.pembayaran where tgl_bayar between '$a' and '$b'";
  $query666 ="select sum(pokok_pajak) as total_pokok_pajak from hiburan.pembayaran where tgl_bayar='$b'";
  $query7 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='07'";
  $query77 ="select sum(pokok_pajak) as total_pokok_pajak from hotel.pembayaran where tgl_bayar between '$a' and '$b'";
  $query777 ="select sum(pokok_pajak) as total_pokok_pajak from hotel.pembayaran where tgl_bayar='$b'";
  $query8 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='08'";
  $query88 ="select sum(pokok_pajak) as total_pokok_pajak from galianc.pembayaran where tgl_bayar between '$a' and '$b'";
  $query888 ="select sum(pokok_pajak) as total_pokok_pajak from galianc.pembayaran where tgl_bayar='$b'";
  $query9 ="select * from public.target where thn_pajak='$c' and kd_obj_pajak='09'";
  $query99 ="select sum(pokok_pajak) as total_pokok_pajak from bphtb.pembayaran where tgl_bayar between '$a' and '$b'";
  $query999 ="select sum(pokok_pajak) as total_pokok_pajak from bphtb.pembayaran where tgl_bayar='$b'";


  $query_bayar1 = "select * from air_tanah.pembayaran as a inner join air_tanah.skp as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar2 = "select * from reklame.pembayaran as a inner join reklame.skp as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar3 = "select * from restoran.pembayaran as a inner join restoran.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar4 = "select * from ppj.pembayaran as a inner join ppj.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar5 = "select * from parkir.pembayaran as a inner join parkir.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar6 = "select * from hiburan.pembayaran as a inner join hiburan.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar7 = "select * from hotel.pembayaran as a inner join hotel.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar8 = "select * from galianc.pembayaran as a inner join galianc.sptpd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";
  $query_bayar9 = "select * from bphtb.pembayaran as a inner join bphtb.sspd as b on a.no_urut_surat=b.no_urut_surat and a.thn_pajak=b.thn_pajak and a.bln_pajak=b.bln_pajak where a.tgl_bayar='$b'";



  ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->



    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">


        <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query1) as $row) {
                  $target1=$row['target'];
                  echo '<b> Pajak Air Tanah </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query11) as $row) {
                  $hariini1=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query111) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini1/$target1)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query2) as $row) {
                  $target2=$row['target'];
                  echo '<b> Pajak Reklame </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query22) as $row) {
                  $hariini2=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query222) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini2/$target2)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query3) as $row) {
                  $target3=$row['target'];
                  echo '<b> Pajak Restoran </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query33) as $row) {
                  $hariini3=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query333) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini3/$target3)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
           <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query4) as $row) {
                  $target4=$row['target'];
                  echo '<b> Pajak Penerangan Jalan </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query44) as $row) {
                  $hariini4=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query444) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini4/$target4)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query5) as $row) {
                  $target5=$row['target'];
                  echo '<b> Pajak Parkir </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query55) as $row) {
                  $hariini5=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query555) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini5/$target5)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query6) as $row) {
                  $target6=$row['target'];
                  echo '<b> Pajak Hiburan </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query66) as $row) {
                  $hariini6=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query666) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini6/$target6)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query7) as $row) {
                  $target7=$row['target'];
                  echo '<b> Pajak Hotel </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query77) as $row) {
                  $hariini7=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query777) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini7/$target7)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query8) as $row) {
                  $target8=$row['target'];
                  echo '<b> Pajak Galianse </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query88) as $row) {
                  $hariini8=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query888) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini8/$target8)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                foreach ($myPDO->query($query9) as $row) {
                  $target9=$row['target'];
                  echo '<b> Pajak BPHTB </b>';
                  echo '<br> Target Pajak : Rp. '. number_format($row['target'],'2',',','.');
                }
                foreach ($myPDO->query($query99) as $row) {
                  $hariini9=$row['total_pokok_pajak'];
                  echo '<br> S/D Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.');
                }
                foreach ($myPDO->query($query999) as $row) {
                  echo '<br> Hari ini : Rp. '. number_format($row['total_pokok_pajak'],'2',',','.').'</td>';
                }
                $hasil = (($hariini9/$target9)*100);
                echo '<br> Persentase : '.number_format($hasil,2).' %';
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        <?php 
          $ii=0;
          for ($i=0; $i < 3 ; $i++) { 
        ?>
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="far fa-circle"></i></span>

              <div class="info-box-content">
                <?php 
                  for ($col=0; $col<5 ; $col++) { 
                    echo $array_total[$i][$col]."<br>";
                  }
                ?>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div> 
        <?php
          }
        ?>
          <!-- /.col -->
        </div>

        <div class="row">
          <div class="col-lg-12">
            <!-- /.card -->

            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">Pembayaran Hari Ini</h3>
                <div class="card-tools">
                </div>
              </div>
            
              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>Nama Usaha</th>
                    <th></th>
                    <th></th>
                    <th></th>
                  </tr>
                  </thead>
                </table>
                <marquee direction="up" scrolldelay="250">
                <table class="table table-striped table-valign-middle">
                  <tbody>
                      <?php 
                      foreach ($myPDO->query($query_bayar1) as $row) {
                        echo '<tr> <td>',$row['nm_usaha'],'</td>';
                        echo ' <td> Pajak Air Tanah : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr>';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar2) as $row) {
                        echo '<tr> <td>',$row['nm_reklame'],'</td>';
                        echo ' <td> Pajak Reklame : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr>';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar3) as $row) {
                        echo '<tr> <td>',$row['nm_usaha'],'</td>';
                        echo ' <td> Pajak Restoran : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr>';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar4) as $row) {
                        echo '<tr> <td>',$row['nm_usaha'],'</td>';
                        echo ' <td> Pajak Penerangan Jalan : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr> ';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar5) as $row) {
                        echo '<tr> <td>',$row['nm_usaha'],'</td>';
                        echo ' <td> Pajak Parkir : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr> ';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar6) as $row) {
                        echo '<tr> <td>',$row['nm_usaha'],'</td>';
                        echo ' <td> Pajak Hiburan : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr> ';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar7) as $row) {
                        echo '<tr> <td>',$row['nm_usaha'],'</td>';
                        echo ' <td> Pajak Hotel : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr> ';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar8) as $row) {
                        echo '<tr> <td>',$row['nm_usaha'],'</td>';
                        echo ' <td> Pajak PMBLB : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr> ';
                      } ?>
                      <?php 
                      foreach ($myPDO->query($query_bayar9) as $row) {
                        echo '<tr> <td>',$row['nama_sppt'],'</td>';
                        echo ' <td> Pajak BPHTB : </td>';
                        echo ' <td> Rp. '.number_format($row['pokok_pajak'],2).' </td> </tr> ';
                      } ?>
                  
                  </tbody>
                </table></marquee>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <?php
  include "pages/charts/kaki.php";
  ?>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<script src="dist/js/demo.js"></script>
<script src="dist/js/pages/dashboard3.js"></script>
</body>
</html>
