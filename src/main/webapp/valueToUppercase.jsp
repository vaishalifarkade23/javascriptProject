<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>onkeyup</title>
</head>
<body>
<input type="text"  id="demo" onkeyup="myfun()">
<script>
function myfun() 
{
	var x=document.getElementById("demo").value;
	 document.getElementById("demo").value = x.toUpperCase();
}
//alert('hello prachi');
</script>

</body>
</html>