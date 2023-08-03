<?php

 include "../../koneksi.php";

  $getid = $_GET['npm'];

  $deletedata = mysqli_query($con,"DELETE FROM `data_aspirasi_mhs` WHERE  id='$getid' ");
  if ($deletedata){
      echo "<script>alert('Data berhasil di hapus');
      location.href='../dashboard.php' </script>";
  }else{
      echo "<script>alert('Data gagal dihapus');
      location.href='../dashboard.php' </script>";
  }
