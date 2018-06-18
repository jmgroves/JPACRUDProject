<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Car Info</title>
</head>
<style type="text/css">
  body {
   margin: 20px;
  }

</style>
<body>
<c:if test="${updated == true }"><h3>Your car has been successfully updated</h3></c:if>
<c:if test="${updated == false }"><h3>Your car not been updated</h3></c:if>



<div>
  <h2>Year: ${car.year} <p>Make: ${car.make}</p>
  <p>Model: ${car.model}</p>
  <p>Color: ${car.color}</p>
  <p>Drive Train: ${car.drive }</p></h2>
</div>
			<form action="updateCar.do" method="GET">
				<input type="submit" value="Update" name="" /><br /> <input
					type="hidden" name="carId" value="${car.id}" />
			</form>
			<form action="deleteCar.do" method="GET">
				<input type="submit" value="Delete" name="" /><br /> <input
					type="hidden" name="carId" value="${car.id}" />
			</form>
			
				<div>
		<a href="index.do">Home</a>
	</div>
</body>
</html>