<!doctype html>
<html>
<head>
<title>Yearly Analysis</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
	border-style: ridge;
	border-color: orangered;
}
h1{  background-color:#F37D2E;
	padding:25px;
	border-style:solid #ff9f13;
	border-width:3px;
	height:40px;
	color:white;
	text-align:center;
	text-style:italic;
	font-size-20;

}
td {
    text-align: left;
}
table { table-layout: fixed;border-color: orangered; }
td { width: 25%; }
th { width: 25%; }
</style>
</head>
<body>
<h1>Analysis of sales and overall profit/loss </h1>
<h2>Yearly Anaysis</h2>

<form action="" method="POST" >
	<h2><pre>YEAR:</pre></h2> <input type="text" name="YEAR1"><br />
	<input type="submit" name="submit" value="submit" />
</form>
<br /><br />
<?php
error_reporting(0);
require 'connect.php';
if (isset($_POST['submit']))
	{
		$YEAR1 = $_POST["YEAR1"];
	}
 
 echo "<strong><h2>Sales report for the year $YEAR1</h2></strong>";	
	$y=0;
	$result1 = $db->query("select p.pid,p.pname,p.pmanufacturer,p.pcategory,p.pmrp,p.pdiscount,(p.pmrp-0.01*p.pdiscount*p.pmrp) as Net_amount from product p ORDER by p.pname");
	while($rows = $result1->fetch_assoc())
	{
		$pid[]=$rows['pid'];
		$pmanufacturer[]=$rows['pmanufacturer'];
		$pcategory[]=$rows['pcategory'];
		$pdiscount[]=$rows['pdiscount'];
		$pname[]=$rows['pname'];
		$pmrp[]=$rows['pmrp'];
		$net_amount[]=$rows['Net_amount'];
		$y=$y+1;
		
	}
	for($i=0;$i<$y;$i++)
	{
		$sold1[]=0.0;
		$quantity1[]=0.0;
	} 
	

 $result = $db->query("select  t.tpid,sum(t.tquantity) as Quantity,sum(t.tmrp*t.tquantity-0.01*t.tdiscount*t.tmrp*t.tquantity) as Sold,MONTH(t.tdate_of_purchase) as Month from transaction t where  YEAR(t.tdate_of_purchase) = $YEAR1 GROUP BY t.tpid,MONTH(t.tdate_of_purchase) ");	
if ($result->num_rows > 0) 
		{
			$x = 0;
			while($rows = $result->fetch_assoc()) 
			{
				$tpid[]=$rows['tpid'];
				$quantity[]=$rows['Quantity'];
				$sold[]=$rows['Sold'];
					for($j=0;$j<$y;$j++)
					{
						if($tpid[$x]==$pid[$j])
						{
							$sold1[$j]=$sold1[$j]+$sold[$x];
							$quantity1[$j]=$quantity1[$j]+$quantity[$x];
						}
					}	
				$month[]=$rows['Month'];
				$x=$x+1;
			}
			$result1 = $db->query("select esalary from employee");	
			while($rows = $result1->fetch_assoc())
			{
				$expenses=$expenses+$rows['esalary'];
			}		
			
			for($j=1;$j<=12;$j++)
			{
				$total[$j]=0.00;
			}
			
			for($j=0;$j<$x;$j++)
				{	
						
					switch($month[$j])
					{
						case 1: $total[1]=$total[1]+$sold[$j];
								$month[$j]=January;
								break ;
						case 2: $total[2]=$total[2]+$sold[$j];
								$month[$j]=February;
								break ;
						case 3: $total[3]=$total[3]+$sold[$j];
								$month[$j]=March;
								break ;
						case 4: $total[4]=$total[4]+$sold[$j];
								$month[$j]=April;
								break ;
						case 5: $total[5]=$total[5]+$sold[$j];
								$month[$j]=May;
								break ;
						case 6: $total[6]=$total[6]+$sold[$j];
								$month[$j]=June;
								break ;
						case 7: $total[7]=$total[7]+$sold[$j];
								$month[$j]=July;
								break ;
						case 8: $total[8]=$total[8]+$sold[$j];
								$month[$j]=August;
								break ;
						case 9: $total[9]=$total[9]+$sold[$j];
								$month[$j]=September;
								break ;
						case 10: $total[10]=$total[10]+$sold[$j];
								$month[$j]=October;
								break ;
						case 11: $total[11]=$total[11]+$sold[$j];
								$month[$j]=November;
								break ;
						case 12: $total[12]=$total[12]+$sold[$j];
								$month[$j]=December;
								break ;	
					}	
						
				}
			for($j=1;$j<=12;$j++)
			{
				$profit[$j]=$total[$j] - $expenses;
				$tprofit=$tprofit+$profit[$j];
				$ttotal=$ttotal+$total[$j];
			switch($j)
					{
						case 1: $mname[$j]=January;
						break ;
						case 2: $mname[$j]=February;
						break ;
						case 3: $mname[$j]=March;
						break ;
						case 4: $mname[$j]=April;
						break ;
						case 5: $mname[$j]=May;
						break ;
						case 6: $mname[$j]=June;
						break ;
						case 7: $mname[$j]=July;
						break ;
						case 8: $mname[$j]=August;
						break ;
						case 9: $mname[$j]=September;
						break ;
						case 10: $mname[$j]=October;
						break ;
						case 11: $mname[$j]=November;
						break ;
						case 12: $mname[$j]=December;
						break ;	
					}
			}					
	$texpenses= $expenses * 12 ;
		
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
				<td><?php echo $quantity1[$j]; ?></td>
				<td><?php echo $sold1[$j]; ?></td>
<?php } ?>		
			</tr>
			</table>
			<br/><br/>
<h3>Overall Monthly Sales Profit/Loss</h3>
<table>
				<tr>
					<td><?php echo "<strong>Month</strong>" ; ?></td>
					<td><?php echo "<strong>Total_Sales</strong>" ; ?></td>
					<td><?php echo "<strong>Expenses</strong>" ; ?></td>
					<td><?php echo "<strong>Profit/Loss</strong>" ; ?></td>
				</tr>
<?php for($j=1;$j<=12;$j++) {?>	
		<tr>	
				<td><?php echo $mname[$j] ; ?></td>
				<td><?php echo $total[$j] ; ?></td>
 				<td><?php echo $expenses ; ?></td>
				<td><?php echo $profit[$j] ; ?></td>		
<?php } ?>	
		</tr>
		</table>
		<br />
	<h3>Overall Yearly Sales Profit/Loss</h3>
	<table>
		<tr>
					<td><?php echo "<strong>Total_Sales</strong>" ; ?></td>
					<td><?php echo "<strong>Expenses</strong>" ; ?></td>
					<td><?php echo "<strong>Profit/Loss</strong>" ; ?></td>
		</tr>
		<tr>
					<td><?php echo $ttotal ; ?></td>
					<td><?php echo $texpenses ; ?></td>
					<td><?php echo $tprofit ; ?></td>
</table>
					

</body>
</html>
			
			
			
