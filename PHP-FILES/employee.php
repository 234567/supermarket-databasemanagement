<!doctype html>

<html>
<head>
<title>EMPLOYEE</title>
<style type="text/css">

h1{
	text-align:center;
	text-style:italic;
	font-size-20;
	
}
h1{  background-color:#F37D2E;
    padding:20px;
	border-style:solid orange;
	border-width:3px;
	height:40px;
	text-color:white;
		}
		h1{
		       color:white;
			   font-style:italic;
			   text-color:white;}
		
			  #nextf,#move,#next,#nexta,#nextc,#nexte,#nextd,#nextg
			  
			  {
				   position:relative;
				   left:200px;
				  bottom:20px;
			   
			   }
			   
			   
</style>
</head>		
<body>
<h1>
REGISTER
</h1>

     <form action="employeecreation.php" method="post">
        Enter the name:<div id="move" > <input type="text" maxlength="30" name="username" align="left"/><br/><br/></div>
        Enter the password: <div id="next"><input type="password" name="password"/></div><br/>
	  Enter the date of birth:  <div id="nexta"> <input type="date" name="dob" /></div><br/>
	   Enter the designation: <div id="nexte"> <input type="text" name="designation" /></div><br/><br/>
       Enter the salary:<div id="nextf"><input type="number"  maxlength="5" name="salary"/></div><br/>
		<div id="nextb">Enter your address:</div><div id="nextc"><textarea name="address" rows="8" cols="40" ></textarea></div><br/><br/>
        Enter your phone.No: <div id="nextd"><input type="number_format" name="phone" /></div></br>
		Enter your admin password:<div id="nextg"><input type="password" name="admi"/></div><br/>
		<input type="submit" value="CREATE" /></div><br/><br/>                 	
		</form>

</body>
</html>