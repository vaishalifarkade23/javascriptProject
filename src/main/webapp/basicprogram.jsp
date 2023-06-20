<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>basic</title>
</head>
<body>
<h1>js object</h1>
<p id="demo"></p>
<script>

	const person={
			firstName:"prachi",
			lastName:'raut',
			age:28,
			height:5.4,
	};
	document.getElementById("demo").innerHTML=person.firstName + " is " +person.age+ " years old with height " +person.height;

</body>
</html>