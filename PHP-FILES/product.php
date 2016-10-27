<!doctype html>

<html>
<head>
<title>PRODUCT</title>
<style type="text/css">


h1{  background-color:#F37D2E;
    padding:25px;
	border-style:solid orange;
	border-width:3px;
	height:40px;
	color:white;
	text-align:center;
	text-style:italic;
	font-size-20;
	
		}
		div{
			position:relative;
			left: 770px;
		}
		table,th{
		       border:1px solid black;}
		</style>
		</head>
<body>
<h1>
PRODUCT SELLING
</h1>
<body>
<form action="product.php" method="post">
<table id="myTable" >
<tr>
<th>PID</th>
<th>QUANTITY</th>
<th>NAME</th>
<th>MRP</th>
<th>DISCOUNT</th>
<th>NET_AMOUNT</<th>
</tr>

<table/>
</form>
<?php
error_reporting(0);
require 'connect.php';
$a = $_POST['txtbox1'];

$rowsize = sizeof($a);
$b = $_POST['txtbox2'];

		
?>
<?php 
$c=array();
$d=array();
$e=array();
$f=array();
$totalamount=0;

for($i = 0; $i < $rowsize ; $i++)
{
$x = $a[$i];	
$result = $db->query("SELECT pname,pmrp,pdiscount,pnet_amount FROM product WHERE pid = '{$x}'  ");
while($row = mysqli_fetch_object($result))
{
	$c[$i] = $row->pname ;
	$d[$i] = $row->pmrp;
	$e[$i] = $row->pdiscount;
	$f[$i] = $row->pnet_amount;
	$f[$i] = $f[$i] * $b[$i] ;
     $totalamount =$totalamount + $f[$i];
}
}
?>
<button type="button" onclick="funct(); gg();" id="my">GETDETAILS</button><br/>
<br/>

<div>TOTAL AMOUNT:<input type="text"  id="totalamount" name="totalamount" ></input></div>
<button type="button" onclick="printqw();">PRINT</button>
<script>
var n,x,a,b,c,d,e;
var qwe,cell1,cell2,cell3,cell4,cell5,cell6;
	 n = "<?php echo $rowsize; ?>";
 qwe = parseInt(n);
function myFunction() {
	
     table = document.getElementById("myTable");
     row = table.insertRow(-1);
      x = document.createElement("INPUT");
	 x.type = "text";
	 x.name = "txtbox1[]";
	 
	 x.setAttribute("class","pid");
	 a = document.createElement("INPUT");
	 a.type = "number_format";
	 a.name = "txtbox2[]";
	 a.setAttribute("class","quantity");
	
	 b = document.createElement("INPUT");
	 b.type = "text";
	 b.name = "txtbox3[]";
	 b.setAttribute("class","pname");
	 c = document.createElement("INPUT");
	 c.type = "number_format";
	 c.name = "txtbox4[]";
	 c.setAttribute("class","pmrp");
	  d = document.createElement("INPUT");
	 d.type = "number_format";
	 d.name = "txtbox5[]";
	 d.setAttribute("class","pdiscount");
	 
	
	  e = document.createElement("INPUT");
	 e.type = "number_format";
	 e.name = "txtbox6[]";
	 e.setAttribute("class","pnet_amount");
	 cell1 = row.insertCell(0);
    cell2 = row.insertCell(1);
	 cell3 = row.insertCell(2);
     cell4 = row.insertCell(3);
	 cell5 = row.insertCell(4);
     cell6 = row.insertCell(5);
	cell1.appendChild(x);
    
    cell2.appendChild(a);
	   cell3.appendChild(b);
	 cell4.appendChild(c);
	   cell5.appendChild(d);
	 cell6.appendChild(e);
 
}
function funct()
{	for (i = 0; i < qwe; i++)
	{
window.onload = myFunction();
	
	}
}  
function printqw()
{
	window.print();
}
function gg() 
{
var qx = document.getElementsByClassName("pid");
var qa = document.getElementsByClassName("quantity");
var qb = document.getElementsByClassName("pname");
var qc = document.getElementsByClassName("pmrp");
var qd = document.getElementsByClassName("pdiscount");
var qe = document.getElementsByClassName("pnet_amount");
var i = 0;
<?php for($i = 0; $i < $rowsize ; $i++) { ?>
	
qx[i].setAttribute("value","<?php echo $a[$i]; ?>");
qa[i].setAttribute("value","<?php echo $b[$i]; ?>");
qb[i].setAttribute("value","<?php echo $c[$i]; ?>");
qc[i].setAttribute("value","<?php echo $d[$i]; ?>");
qd[i].setAttribute("value","<?php echo $e[$i]; ?>");
qe[i].setAttribute("value","<?php echo $f[$i]; ?>");

i = i+1;
<?php } ?>


var total = document.getElementById("totalamount");
total.setAttribute("value","<?php echo $totalamount; ?>");
}

</script>


</br></br>

</body>
</html>