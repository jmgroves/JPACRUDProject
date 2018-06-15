<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="skeleton.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Update Car</title>
</head>
<body>
<h2>Car ID: ${car.id }</h2>
<form action="updateCarDetails.do" method=POST>
Year: <input type="text" name="year" value="${car.year}"><br>
Make: <input type="text" name="make" value="${car.make}"><br>
Model: <input type="text" name="model" value="${car.model}"><br>
Color: <input type="text" name="color" value="${car.color}"><br>
Drive Train: <input type="text" name="drive" value="${car.drive}"><br>
	 <input type="hidden" name="carId" value="${car.id}" />
	 <input type="hidden" name="car" value="${car}" />
	<input type="submit" value="Update Car" /> 
	</form>

 <br><br>
</body>
</html>