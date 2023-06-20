<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <p id="demo">Welcome</p>
<script>

     //to show alert msg 
     
    //alert('Hello');
    function getfun() {
    	//alert msg on clicking the button
		//alert("Hello");
    	document.getElementById("demo").innerHTML="hs group";
    	 
    	document.write(5+6);
    	
    	console.log(5+7);
	}
</script>
<button onclick="getfun()">click me</button>
</body>
</html>