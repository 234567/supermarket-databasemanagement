<!doctype html>
<html>

<body>
<?php
error_reporting(0);
require 'connect.php';
$a = $_POST["username"];
$b = $_POST["password"];
$c = $_POST["dob"];
$d = $_POST["address"];
$e = $_POST["num"];
 $db->query("INSERT INTO customer (cname,cpassword,cdob,caddress,ccontact_no)  
	VALUES('{$a}','{$b}','{$c}','{$d}',{$e})");


	//echo '<pre>',print($rows),'<pre/>';echo $a,$b,$c,$d,$e;
echo "successful";

?>
</body>
</html>