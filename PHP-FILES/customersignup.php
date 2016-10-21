<!doctype html>

<html>
<head>
<title>SIGN UP</title>
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
			   #move{
				   position:relative;
				   left:200px;
				   bottom:20px;
			   
			   }
			    
				 #next{
				   position:relative;
				   left:200px;
				  bottom:20px;
			   
			   }
			   
			    #nexta{
				   position:relative;
				   left:200px;
				  bottom:20px;
			   
			   }
			     #nextb{
				   position:relative;
				   right:200px;
				  
			   
			   }
			     #nextc{
				   position:relative;
				   left:200px;
				  bottom:20px;
			   
			   }
			    #nextd{
				   position:relative;
				   left:200px;
				  bottom:20px;
			   
			   }
			   
			   
</style>
</head>		
<body>
<h1>
SIGN UP
</h1>

     <form action="customercreation.php" method="post">
        Enter the name:<div id="move" > <input type="text" maxlength="30" name="username" align="left"/><br/><br/></div>
        Enter the password: <div id="next"><input type="password" name="password"/></div></br>
		Enter the date of birth: <div id="nexta"><input type="date" name="dob" /><div/><br/>
	    <div id="nextb">Enter your address:<div/><div id="nextc"><textarea name="address" rows="8" cols="40" ></textarea></div><br/><br/>
        Enter your phone.No: <div id="nextd"><input type="number_format" name="num" /><div/><br/><br/>                 
		<input type="submit" value="CREATE"/>
		</form>

</body>
</html>