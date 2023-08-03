<?php
if (session_id() == '') {
    session_start();
}



if (isset($_GET['aksi']) && $_GET['aksi'] == 'logout') {
    session_destroy();
    header("Location: /SDM/volunteer/login.php");
    exit();
}



