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
<input type="submit"></input>
</form>

<button type="button" onclick="myFunction()">CREATE</button>
<script>
function myFunction() {
    var table = document.getElementById("myTable");
    var row = table.insertRow(-1);
     var x = document.createElement("INPUT");
	 x.type = "text";
	 x.name = "txtbox1[]";
	   var a = document.createElement("INPUT");
	 a.type = "number_format";
	 a.name = "txtbox2[]";
	    var b = document.createElement("INPUT");
	 b.type = "text";
	 b.name = "txtbox3[]";
	   var c = document.createElement("INPUT");
	 b.type = "number_format";
	 b.name = "txtbox4[]";
	   var d = document.createElement("INPUT");
	 d.type = "number_format";
	 d.name = "txtbox5[]";
	   var e = document.createElement("INPUT");
	 e.type = "number_format";
	 e.name = "txtbox6[]";
	 
	var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
    var cell6 = row.insertCell(5);
	cell1.appendChild(x);
    
    cell2.appendChild(a);
	   cell3.appendChild(b);
	 cell4.appendChild(c);
	   cell5.appendChild(d);
	 cell6.appendChild(e);
	
}
</script>
</br></br>

</body>
</html>