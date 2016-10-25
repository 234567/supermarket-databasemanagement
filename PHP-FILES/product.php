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
		table,th{
		       border:1px solid black;}
		</style>
		</head>
<body>
<h1>
PRODUCT SELLING
</h1>
<body onclick="niga();">
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
echo "dollatr";
$a = $_POST['txtbox1'];
$rowsize = sizeof($a);
$b = count($a);
for($i=0;$i<$b;$i++)
{
	
echo $a[$i];
}
echo $rowsize;
?>
<button type="button" onclick="funct(); niga();" id="my">getdetails</button>
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
	 x.id = "idbox1[]";
	    a = document.createElement("INPUT");
	 a.type = "number_format";
	 a.name = "txtbox2[]";
	 a.id = "idbox2[]";
	  b = document.createElement("INPUT");
	 b.type = "text";
	 b.name = "txtbox3[]";
	  b.id = "idbox1[]";
	   c = document.createElement("INPUT");
	 c.type = "number_format";
	 c.name = "txtbox4[]";
	  c.id = "idbox4[]";
	  d = document.createElement("INPUT");
	 d.type = "number_format";
	 d.name = "txtbox5[]";
	 d.id = "idbox5[]";
	  e = document.createElement("INPUT");
	 e.type = "number_format";
	 e.name = "txtbox6[]";
	 e.id = "idbox6[]";
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
}  function niga()
{	
document.getElementById("idbox[0]").innerHTML = "tt";
	}

</script>

</br></br>

</body>
</html>