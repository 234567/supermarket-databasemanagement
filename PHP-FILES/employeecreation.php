<!doctype html>
<html>

<body>
<?php
error_reporting(0);
require 'connect.php';
$a = $_POST["username"];
$b = $_POST["password"];
$d = $_POST["designation"];
$c = $_POST["dob"];
$e = $_POST["salary"];
$f = $_POST["address"];
$g = $_POST["phone"];
$h = $_POST["admi"];
 $db->query("INSERT INTO employee (ename,epassword,edob,edesignation,esalary,eaddress,econtact_no)  
	VALUES('{$a}','{$b}','{$c}','{$d}',{$e},'{$f}','{$g}')");
//echo $a, $b,$c,$d,$e,$f,$g,$h;

	//echo '<pre>',print($rows),'<pre/>';echo $a,$b,$c,$d,$e;
echo "successful";

?>
</body>
</html>