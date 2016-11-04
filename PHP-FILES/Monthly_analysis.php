<!doctype html>
<html>
<head>
<title>Monthly Analysis</title>
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
<h2>Monthly Anaysis</h2>
<form action="" method="POST" >
	<h2><pre>YEAR:</pre></h2> <input type="text" name="YEAR"><br />
	<h2><pre>MONTH:</pre></h2> <select name ="MONTH1">
	<option value="0" selected>--</option>
	<option value="1" selected>January</option>
	<option value="2" selected>February</option>
	<option value="3" selected>March</option>
    <option value="4" selected>April</option>
    <option value="5" selected>May</option>
	<option value="6" selected>June</option>
	<option value="7" selected>July</option>
	<option value="8" selected>August</option>
	<option value="9" selected>September</option>
	<option value="10" selected>October</option>
	<option value="11" selected>November</option>
	<option value="12" selected>December</option>
	<option value="0" selected>--</option>
	</select>
	<br /><br />
	<input type="submit" name="submit" value="submit" />
</form>
<br /><br />
<?php
error_reporting(0);
require 'connect.php';


	if (isset($_POST['submit']))
	{
		$YEAR = $_POST["YEAR"];
		$month1 = $_POST["MONTH1"];
	}
 
 echo "<strong><h2>Sales report</h2></strong>";		
	
 $result = $db->query("select  p.pid,p.pname,p.pmanufacturer,p.pcategory,p.pmrp,p.pdiscount,(p.pmrp-0.01*p.pdiscount*p.pmrp) as Net_amount,sum(t.tquantity) as Quantity,sum(t.tmrp*t.tquantity-0.01*t.tdiscount*t.tmrp*t.tquantity) as Sold from product p,transaction t where p.pid=t.tpid AND YEAR(t.tdate_of_purchase) = $YEAR And MONTH(t.tdate_of_purchase) = $month1 GROUP BY p.pid Order by p.pname");	
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
			$result1 = $db->query("select esalary from employee");	
			while($rows = $result1->fetch_assoc())
			{
				$expenses=$expenses+$rows['esalary'];
			}		
				$total=0.00;
			
			for($j=0;$j<$x;$j++)
				{	
					$total=$total+$sold[$j];
				}		
					
			for($j=1;$j<=12;$j++)
			{
				$profit=$total - $expenses;
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
<h3>Overall Monthly Sales Profit/Loss</h3>
<table>
				<tr>
					<td><?php echo "<strong>Total_Sales</strong>" ; ?></td>
					<td><?php echo "<strong>Expenses</strong>" ; ?></td>
					<td><?php echo "<strong>Profit/Loss</strong>" ; ?></td>
				</tr>

		<tr>	
				<td><?php echo $total; ?></td>
 				<td><?php echo $expenses ; ?></td>
				<td><?php echo $profit; ?></td>		

		</tr>


					

</body>
</html>
			
			
			
