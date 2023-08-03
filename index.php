<!DOCTYPE html>
<html lang="en">
<?php
include_once "koneksi.php";
include_once "sesi.php";

?>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Form POLKESMA</title>

  <!-- Custom fonts for this template-->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/popup.css" />
</head>
<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- Main Content -->
      <div id="content">
        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800"></h1>
          </div>
          <!-- Content Row -->
          <div class="row">
          </div>
          <!-- Content Row -->
          <div class="row">
            <!-- Content Column -->
            <!-- Project Card Example -->
            <!-- Color System -->
            <div class="col-lg">
              <!-- Illustrations -->
              <div class="card shadow mb-12">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary"></h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="" alt="">
                  </div>
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-12">
                        <h2 class="page-header"><b>FORM FIBER OPTIK</b></h2>
                        <br>
                        <p class="page-header2">Form Fiber Optik ( FIKTI Bersuara Opini Terkini ) merupakan sebuah wadah
                          bagi mahasiswa FIKTI Universitas Gunadarma untuk
                          menyampaikan berbagai keresahan, pengaduan, aspirasi, hingga pertanyaan yang kalian miliki.
                        </p>
                        <form method="POST" action="simpan.php" enctype="multipart/form-data">
                          <br><br>
                          <center>
                            <h3 class="page-header3"><b>Bidang Polkesma</b></h3>
                            <img src="Polkesma.png" width=50%>
                          </center>
                          <br><br>
                          <div class="form-group">
                            <?php
                            $tampildata = mysqli_query($con, " SELECT * FROM `caption`");
                            while ($data = mysqli_fetch_array($tampildata)) {
                              // $tampilan = $data['npm'];
                              $nama        = $data['nama'];
                              $npm        = $data['npm'];
                              $kelas        = $data['kelas'];
                              $domisili    = $data['domisili'];
                              // $kategori    = $data['kategori'];
                              $aspirasi   = $data['aspirasi'];
                              $kontak   = $data['kontak'];
                            ?>
                              <label>
                                <caption><?php echo $nama; ?></caption>
                              </label><br>
                              <input type="text" class="form-control" name="nama_mhs" oninput="this.value = this.value.replace(/[^a-z. A-Z.]/g, '').replace(/(\..*)\./g, '$1');" required>
                              <br>
                              <label>
                                <caption><?php echo $npm; ?></caption>
                              </label><br>
                              <input type="text" class="form-control" name="npm" minlength="8" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
                              <br>
                              <label>
                                <caption><?php echo $kelas; ?></caption>
                              </label><br>
                              <input type="text" class="form-control" name="kelas" required>
                              <br>
                              <caption><?php echo $domisili; ?></caption>

                              <select class="form-control" name="domisili">
                                <?php
                                $pilih_domisili = array('Depok', 'Cengkareng', 'Kalimalang', 'Karawaci', 'Salemba', 'Simatupang');
                                foreach ($pilih_domisili as $dom_user) {
                                  $selected = $domisili == $dom_user ? ' selected="selected"' : '';
                                  echo '<option value="' . $dom_user . '"' . $selected . '>' . $dom_user . '</option>';
                                } ?>
                              </select>
                              <br>
                              <!-- Kategori Aspirasi
                            <select class="form-control" name="kategori_aspirasi">
                              <?php
                              $pilih_kategori = array('Fasilitas', 'BEM', 'Pelayanan Kampus', 'Pembelajaran Kampus');
                              foreach ($pilih_kategori as $kategori_terpilih) {
                                $selected = $kategori == $kategori_terpilih ? ' selected="selected"' : '';
                                echo '<option value="' . $kategori_terpilih . '"' . $selected . '>' . $kategori_terpilih . '</option>';
                              } ?>
                            </select> -->
                              <br>
                              <!-- <label>Aspirasi atau pertanyaan yang ingin disampaikan</label><br> -->
                              <!-- <label>Berikan Aspirasi serta kritik dan saranmu untuk BEM FIKTI Universitas Gunadarma</label><br> -->
                              <caption><?php echo $aspirasi; ?></caption><br>
                              <textarea type="text" class="form-control" cols="40" rows="5" name="Pesan" required></textarea>
                              <br>
                              <!-- <label> <caption>Kontak yang dapat dihubungi</caption> </label><br> -->
                              <label>
                                <caption><?php echo $kontak; ?></caption>
                              </label><br>
                              <input type="text" class="form-control" name="kontak" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
                              <br>
                              <p class="page-header2"><b>Terima kasih!</b><br>
                                *Kerahasiaan informasi akan dijamin, begitupun dengan input yang kami terima, akan kami
                                jaga kerahasiaannya dan hanya untuk
                                kalangan tertentu. Untuk pertanyaan, bisa kami berikan jawaban secara personal, oleh
                                karena itu diperlukan untuk menginput Nomor HP / WhatsApp / ID LINE.</p>
                              <p class="page-header2"><b>Contact Person</b><br>
                              <ul>
                                <!-- <li>CP 1 (fauz) : 081389053536 (wa)</li>
                              <li> CP 2 (berlin) : 087781066856 (wa)</li> -->
                                <li>CP 1 (Vanisa) : 089606473848 (wa)</li>
                                <li> CP 2 (Fioreza) : 085282810339 (wa)</li>
                              </ul>
                              </p>
                              <br>
                            <?php }
                            ?>
                            <button class="btn btn-primary" type="submit" name="send">Submit</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.container-fluid -->
          </div>
          <!-- End of Main Content -->
          <!-- Footer -->
          <footer class="sticky-footer bg-white">
            <div class="container my-auto">
              <div class="copyright text-center my-auto">
                <span><b>Maintained by Biro PTI 2021/2022</b></span>
              </div>
            </div>
          </footer>
          <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
      </div>
      <!-- End of Page Wrapper -->
      <!-- Bootstrap core JavaScript-->
      <script src="assets/vendor/jquery/jquery.min.js"></script>
      <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="assets/js/sb-admin-2.min.js"></script>
      <!-- Page level plugins -->
      <script src="assets/vendor/chart.js/Chart.min.js"></script>
      <!-- Page level custom scripts -->
      <script src="assets/js/demo/chart-area-demo.js"></script>
      <script src="assets/js/demo/chart-pie-demo.js"></script>
</body>
</html>