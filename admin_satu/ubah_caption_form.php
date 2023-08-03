<?php
session_start();

if(!isset($_SESSION["username"])){
  header("location: index.php");
}

include_once "../koneksi.php";

if(isset($_POST['ubah'])){
  $nama = htmlspecialchars(mysqli_real_escape_string($con,$_POST['nama']));
  $npm = htmlspecialchars(mysqli_real_escape_string($con,$_POST['npm']));
  $kelas = htmlspecialchars(mysqli_real_escape_string($con,$_POST['kelas']));
  $domisili = htmlspecialchars(mysqli_real_escape_string($con,$_POST['domisili']));
  $kategori = htmlspecialchars(mysqli_real_escape_string($con,$_POST['kategori']));
  $aspirasi = htmlspecialchars(mysqli_real_escape_string($con,$_POST['aspirasi']));
  $kontak = htmlspecialchars(mysqli_real_escape_string($con,$_POST['kontak']));

  $sql = "UPDATE `caption` SET 
          `npm`='$npm',
          `kelas`='$kelas',
          `domisili`='$domisili',
          `kategori`='$kategori',
          `aspirasi`='$aspirasi',
          `kontak`='$kontak'";

  $result = mysqli_query($con,$sql);

  if (mysqli_affected_rows($con) > 0) {
      echo"<script>alert('Data berhasil diubah !'); location.href='index.php';</script>";
  }else{
      echo"<script>alert('Data gagal diubah !');</script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Admin Fiber Optik</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="" />
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="assets/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  </head>

  <body class="app sidebar">

    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="index.html">Fiber Optik</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">

        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="config/logout.php"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user bg-warning">
        <div>
          <p class="app-sidebar__user-name">Admin</p>
          <p class="app-sidebar__user-designation">Fiber Optik</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="dashboard.php"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fas fa-pen"></i> Ubah Data</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">Ubah Data</li>
        </ul>
      </div>
      <div class="row">
          <div class="col-12">
              <div class="tile">
                  <div class="tile-body">
                      <form action="" method="post"  enctype="multipart/form-data">
                          <h3 style="text-align: right; margin:0;">
                              <a href="./index.php" style="text-decoration: none; display:inline;"
                                  class="text-dark"><span class="close-btn">&times;</span></a>
                          </h3>
                          <div class="form-group text-center">
                              <h4>Ubah Form<span class="text-warning"> Fiber</span> Optik</h4>
                              <br>
                          </div>
                          <?php
                          $sql_ubah = "SELECT * FROM  `caption`";

                          $result_ubah = mysqli_query($con,$sql_ubah);

                          while($row = mysqli_fetch_assoc($result_ubah)){
                          ?>
                          <div class="row">
                            <!-- <input type="hidden" value="<?=$row['id']?>"> -->
                              <div class="col-12 col-md-6">
                                  <label for="nama">Nama</label><br>
                                  <input type="text" class="form-control" id="nama" required name="nama" value="<?=$row['nama']?>"><br>
                              </div>
                              <div class="col-12 col-md-6">
                                  <label for="npm">NPM</label>
                                  <input type="text" class="form-control" id="npm" required name="npm" value="<?=$row['npm']?>"><br>
                              </div>
                              <div class="col-12 col-md-6">
                                  <label for="kelas">Kelas</label>
                                  <input type="text" class="form-control" id="kelas" required name="kelas" value="<?=$row['kelas']?>"><br>
                              </div>
                              <div class="col-12 col-md-6">
                                  <label for="kelas">Domisili</label>
                                  <input type="text" class="form-control" id="kelas" required name="domisili" value="<?=$row['domisili']?>"><br>
                              </div>
                              <div class="col-12 col-md-6">
                                  <label for="jurusan">Kategori</label>
                                  <input type="text" class="form-control" id="jurusan" required name="kategori" value="<?=$row['kategori']?>"><br>
                              </div>
                              <div class="col-12 col-md-6">
                                  <label for="domisili">Aspirasi</label>
                                  <input type="text" class="form-control" id="domisili" required name="aspirasi" value="<?=$row['aspirasi']?>"><br>
                              </div>
                              <div class="col-12 col-md-6">
                                  <label for="idline">Kontak</label>
                                  <input type="text" class="form-control" id="idline" required name="kontak" value="<?=$row['kontak']?>"><br>
                              </div>
                              <?php
                              };
                              ?>
                              <div class="col-12">
                                  <button type="submit" name="ubah" class="btn btn-warning btn-lg text-dark">
                                      <h5 class="m-0">ubah</h5>
                                  </button>
                              </div>
                          </div>
                      </form>
                  </div>
              </div>
          </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>

  </body>
</html>