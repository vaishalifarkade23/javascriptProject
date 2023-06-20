<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Num1:<input type="text"  id="d1" >
<br>
Num2:<input type="text" id="d2">
<br>
<button onclick="add()">click</button>
<br>
Result:<input  type="text" id="demo" >
<script>
  			function add()
  			{
  			   let a,b,c;
  			   a=parseInt(document.getElementById("d1").value);
  			   b=parseInt(document.getElementById("d2").value);
  			   c=a+b;
  			   document.getElementById("demo").value=c;
  			}
</script>
</body>
</html>