<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
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
<title>Car Index</title>
</head>
<style type="text/css">
  body {
   margin: 20px;
  }

</style>
<body>



<c:if test="${deleted == true }">Your car has been successfully deleted</c:if>
<c:if test="${deleted == false }">Your car has not been deleted</c:if>
<c:if test="${added == true }">Your car has been successfully added</c:if>
<c:if test="${added == false }">Your car has not been added</c:if>


<form action="getCar.do" method="GET">
  <input type="text" name="cid"/>
  <input type="submit" value="Find Car"/>
</form><br>
<form action="addCar.do" method="GET">
  <input type="submit" value="Add Car"/>
</form><br><br>   


<c:forEach items="${cars}" var="car">
	<div>
		<h1><a href="getCar.do?cid=${car.id}">${car.year } ${car.make } ${car.model }</a><br>
		<br>
		
		
				
	</div>
</c:forEach>


<form action="breakout.do" method="GET">
  <input type="submit" value="Breakout!"/>
</form>
</body>
</html>