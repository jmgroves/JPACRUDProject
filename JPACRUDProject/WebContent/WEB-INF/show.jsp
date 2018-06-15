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
<body>
<c:if test="${updated == true }">Your car has been successfully updated</c:if>
<c:if test="${updated == false }">Your car not been updated</c:if>



<div>
  <h5>${car.year} <p>${car.make}</p>
  <p>${car.model}</p></h5>
  <p>${car.color}</p>
  <p>Drive Train: ${car.drive }</p>
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