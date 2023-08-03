<?php

include 'koneksi.php';

if (isset($_POST['send'])) {

    $nama       = mysqli_real_escape_string($con,$_POST['nama_mhs']);
    $npm        = mysqli_real_escape_string($con,$_POST['npm']);
    $kelas      = mysqli_real_escape_string($con,$_POST['kelas']);
    $domisili   = mysqli_real_escape_string($con,$_POST['domisili']);
    $kategori   = mysqli_real_escape_string($con,$_POST['kategori_aspirasi']);
    $aspirasi   = mysqli_real_escape_string($con,$_POST['Pesan']);
    $kontak     = mysqli_real_escape_string($con,$_POST['kontak']);

    $insertquery    = mysqli_query($con, "INSERT INTO data_aspirasi_mhs (nama_mhs, npm, kelas, domisili, kategori_aspirasi, Pesan, kontak) 
                                          VALUES ('$nama', '$npm','$kelas', '$domisili', '$kategori', '$aspirasi', '$kontak')");

    if ($insertquery) {
        header("location:berhasil.php");
    } else {
        echo "Gagal";
    }
}
