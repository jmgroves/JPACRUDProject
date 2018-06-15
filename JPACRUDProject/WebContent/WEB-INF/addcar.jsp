<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="skeleton.css">
<meta charset="UTF-8">

<title>Add Car To Database</title>
</head>
<body>
<h1>Enter the information of the car you would like to add.</h1>
<form action="addingCar.do" method="POST">
Year: <input type="text" name="year" value="${car.year}"><br>
Make: <input type="text" name="make" value="${car.make}"><br>
Model: <input type="text" name="model" value="${car.model}"><br>
Color: <input type="text" name="color" value="${car.color}"><br>
Drive: <input type="text" name="drive" value="${car.drive}"><br>
	<input type="submit" value="Add Car" />
	<input type="hidden" name="cid" value="${car.id}" />
	</form>
	<div>
		<a href="index.do">Home</a>
	</div>

</body>
</html>