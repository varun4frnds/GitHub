<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Trains</title>
<jsp:include page="Home.jsp"/>
      <br><br><br>
<link rel = "stylesheet" type = "text/css" href = "Table.css" />

</head>
<body bgcolor="#d3d3d3"><br><br><br>
<%
        String email=(String)session.getAttribute("logname");
        
        //redirect user to login page if not logged in
        if(email==null){
            response.sendRedirect("Login.jsp");
        }
        %>

 
 <!-- <form method="post" action="Book.jsp"> -->
<center>
<table>
<tr>
    <th>Train Number</th>
    <th>Train Name</th>
    <th>Source</th>
    <th>Destination</th>
    <th>Price</th>
    <th>Book Ticket</th>
</tr>
<c:forEach items="${alltrains}" var="train">
  <tr>
    <td>${train.trainNo}</td>
    <td>${train.trainName}</td>
    <td>${train.source}</td>
    <td>${train.destination}</td>
    <td>${train.ticketPrice}</td>
    <td><input type="button" name="sourdest" onclick="location.href='Book.jsp?trainName=${train.trainName}&destination=${train.destination}&source=${train.source}&trainNo=${train.trainNo}&ticketPrice=${train.ticketPrice}';" value="Book"/></td>
  	<%-- <td><a href='EditTrainForm?id=${train.trainNo}'>Edit</a></td><td><a href='DeleteLibrarian?id=${train.trainNo}'>Delete</a></td> --%>
  </tr>
</c:forEach>
</table>
</center>
<!-- </form> -->
</body>
</html>