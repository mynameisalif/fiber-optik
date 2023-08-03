<?php 
   
   include  "../../koneksi.php";
 
   $username =  mysqli_real_escape_string($con,$_POST['username']);
   $password =  mysqli_real_escape_string($con,MD5($_POST['password']));

   if (isset($_POST['register'])) {
    
    $insertquery    = mysqli_query($con, "INSERT INTO `login` 
                                               (`username`, `password`)
                                          VALUES ('$username', '$password') ");          
 if ($insertquery){
     echo "<script>alert('Register sukses');
     location.href='../';</script>";
 } else{
    echo "<script>alert('gagal Register');
     location.href='../';</script>";
 }
}
?>