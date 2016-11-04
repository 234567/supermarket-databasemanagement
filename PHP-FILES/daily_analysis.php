<!doctype html>
<html>
<head>
<title>Daily Analysis</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
td {
    text-align: left;
}
table { table-layout: fixed; }
td { width: 25%; }
th { width: 25%; }
</style>
</head>
<body>
<h1>Analysis of sales and overall profit/loss </h1>
<h2>Daily Anaysis</h2>
<form action="" method="POST" >
	<h2><pre>DATE:</pre></h2> <input type="date" name="DATE1"><br />
	<input type="submit" name="submit" value="submit" />
</form>
<br /><br />
<?php
error_reporting(0);
require 'connect.php';

if (isset($_POST['submit']))
	{
		$DATE1 = $_POST["DATE1"];
	}
 echo "<strong><h2>Sales report for the date $DATE1</h2></strong>";
 
 $result = $db->query("select  p.pid,p.pname,p.pmanufacturer,p.pcategory,p.pmrp,p.pdiscount,(p.pmrp-0.01*p.pdiscount*p.pmrp) as Net_amount,sum(t.tquantity) as Quantity,sum(t.tmrp*t.tquantity-0.01*t.tdiscount*t.tmrp*t.tquantity) as Sold from product p,transaction t where p.pid=t.tpid And DATE(t.tdate_of_purchase) = '$DATE1' GROUP BY p.pid ORDER BY p.pname ");	
if ($result->num_rows > 0) 
		{
			$x = 0;
			while($rows = $result->fetch_assoc()) 
			{
				$pid[]=$rows['pid'];
				$pmanufacturer[]=$rows['pmanufacturer'];
				$pcategory[]=$rows['pcategory'];
				$pdiscount[]=$rows['pdiscount'];
				$pname[]=$rows['pname'];
				$pmrp[]=$rows['pmrp'];
				$net_amount[]=$rows['Net_amount'];
				$quantity[]=$rows['Quantity'];
				$sold[]=$rows['Sold'];
				$x=$x+1;
			}	
			$total=0.00;
			for($j=0;$j<$x;$j++)
				{	
					$total=$total+$sold[$j];
				}	
}
else
{
	echo "Error";
}
?>
<table>
			<tr>
				<td><?php echo "<strong>PID</strong>" ; ?></td>
				<td><?php echo "<strong>Product Name</strong>" ; ?></td>
				<td><?php echo "<strong>Manufacturer</strong>" ; ?></td>
				<td><?php echo "<strong>Catergory</strong>" ; ?></td>
				<td><?php echo "<strong>Pmrp</strong>" ; ?></td>
				<td><?php echo "<strong>Discount</strong>" ; ?></td>
				<td><?php echo "<strong>Net Amount</strong>" ; ?></td>
				<td><?php echo "<strong>Quantity</strong>" ; ?></td>
				<td><?php echo "<strong>Sold</strong>" ; ?></td>
			</tr>	
<?php for($j=0;$j<$x;$j++) {?>
			<tr>	
				<td><?php echo $pid[$j] ; ?></td>
				<td><?php echo $pname[$j] ; ?></td>
 				<td><?php echo $pmanufacturer[$j] ; ?></td>
				<td><?php echo $pcategory[$j] ; ?></td>
				<td><?php echo $pmrp[$j]; ?></td>
				<td><?php echo $pdiscount[$j]; ?></td>	
				<td><?php echo $net_amount[$j]; ?></td>	
				<td><?php echo $quantity[$j]; ?></td>
				<td><?php echo $sold[$j]; ?></td>

	
<?php } ?>		
			</tr>
			</table>
			<br/><br/>
<h3>Overall Daily Sales Profit/Loss</h3>
<table>
				<tr>
					<td><?php echo "<strong>Total_Sales</strong>" ; ?></td>
				</tr>
				<td><?php echo $total ; ?></td>	
		</tr>


					

</body>
</html>
			
			
			
