<?php
session_start();
include "../koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Aspirasi Mahasiswa</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- <link rel="stylesheet" href="assets/style.css"> -->
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <div class="body">
    <div class="aspirasi-mahasiswa container-fluid mt-5">
      <div class="content row ">
        <div class="content-1 col-md-3">
          <div class="penjelsan-1 card shadow-lg" data-aos="fade-right" data-aos-duration="1000">
            <div class="isi-1 card-body">
              <h5 class="judul card-title"><span class="polkesma"></span></h5>
            </div>
          </div>
          <div class="content-2 card shadow-lg" data-aos="fade-right" data-aos-duration="1000">
            <div class="penjelsan-2 card-body">
              <i class="info fas fa-info-circle text-center"></i>
              <p class="keterangan card-text">Ini adalah halaman aspirasi MAHASISWA</p>
            </div>
          </div>
        </div>
        <div class="komentar col-md-9">
          <?php

          $tampildata = mysqli_query($con, " SELECT * FROM `data_aspirasi_mhs` ORDER BY id DESC");
          while ($data = mysqli_fetch_array($tampildata)) {
            // $tampilan = $data['npm'];
            $nama        = $data['nama_mhs'];
            $domisili    = $data['domisili'];
            $kategori    = $data['kategori_aspirasi'];
            $status_aspirasi   = $data['status_aspirasi'];
            $aspirasi   = $data['Pesan'];
          ?>
            <div class="isi-komentar card mb-3 shadow-lg" data-aos="zoom-in-left" data-aos-duration="1000" data-aos-delay="200">
              <!-- baris 54 baut nambahin  aosnya -->
              <!-- <img src="logo.png" class="logo-polkesma col-md-3"style="border-radius: 100px;">           -->
              <h5 class="logo card-header"><img class="rounded-circle" src="logo.png" alt="Generic placeholder image">
                <?php $vowels = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
                $text = $nama;
                $usecase = ucwords($text);
                $onlyconsonants = str_replace($vowels, "*", $usecase);
                echo $onlyconsonants ?></h5>
              <div class="caption card-body card-badge">
                <p class="domisili card-title"><?php echo $domisili; ?></p>
                <p class="kategori card-text"><?php echo $kategori; ?></p>
                <p class="badge badge-info"><?php echo $status_aspirasi  ; ?></p>
                <hr>
                <h6 class="aspirasi card-text"><?php echo $aspirasi; ?></h6>
              </div>
            </div>
          <?php }
          ?>
        </div>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
  <script>
    let typed = new Typed(".polkesma", {
      strings: ["Aspirasi Mahasiswa", "Bidang Polkesma", "Kabinet Sakti", "BEM FIKTI UG 2021/2022"],
      typeSpeed: 100,
      backSpeed: 100,
      loop: true,
    });
  </script>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init({
      once: true
    });
  </script>
</body>

</html>