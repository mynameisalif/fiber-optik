<?php



/**

 * using mysqli_connect for database connection

 */




// $host = "localhost";

// $user = "bemfikti_basket";

// $pass = "QwertyAlif4321";

// $db = "bemfikti_muara";

$host = "localhost";

$user = "root";

$pass = "";

$db = "fiber_optik";

$con = mysqli_connect($host,$user,$pass,$db)or die("ERROR");

// $conn = mysqli_connect($servername, $username, $password, $database);



// if (mysqli_connect_errno()) {

// 	echo mysqli_connect_errno();

// }



// if ($_SERVER["HTTPS"] != "on") {

// 	header("Location:https://" .

// 		$_SERVER["HTTP_HOST"] .

// 		$_SERVER["REQUEST_URI"]);

// 	exit();

// }

