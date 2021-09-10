<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

<%@page import="java.sql.*"%> 
<%@page import="java.io.*"%>   
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
int bookingID=Integer.parseInt(request.getParameter("bookingId"));

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/hotel?autoReconnect=true&useSSL=false";
String un = "root";
String password= "root123";

try{
	Class.forName(driver);
}catch(ClassNotFoundException e){
	e.printStackTrace();
}

Connection connection=null;
Statement statement=null;
ResultSet resultSet=null;
%>
<%
try{
	connection=DriverManager.getConnection(url,un,password);
	
	statement=connection.createStatement();
	String sql="select * from booking where bookingId ='"+bookingID+"'";//quates
	resultSet=statement.executeQuery(sql);
	while(resultSet.next()){
		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Booking</title>
<style>

/*header*/
.header {
  overflow: hidden;
  background-color: #32315c;
  padding: 10px 10px; <!--30px 10px; -->
}
/*hyperlinks of the header*/
.header a {
  float: left;
  color: white;
  text-align: center;
  padding: 15px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 30px;
  border-radius: 6px;
}
/*hovering effects in header*/
.header a:hover {
  background-color: #847979;
  color: white;
}
/*2 options on the right side of the header*/
.header__right {
  float: right;
  font-family:helvetica;
  background-color:#018383;
  border-radius:6px;
  border:2px;
}
/*current page detecting from header right*/
.header__right a.active {
	background-color: black;
	color: white;
}
/*top navigation bar*/
.topnav {
  overflow:hidden;
  background-color: #018383;
}
/*top navigation bar options(links)*/
.topnav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 20px 30px;
  text-decoration: none;
  font-size: 16px;
  font-family:century gothic;
}
/*top navigation bar hovering effect*/
.topnav a:hover {
  background-color:  529B7B;
  color: white;
}
/*current page detecting from navigation bar*/
.topnav a.active {
  background-color: black;
  color: white;
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}
/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}
.active {
  background-color: #717171;
}
/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

.container {
	position: relative;
	text-align: center;
	color: white;
	
}

.centered{
		position:absolute;
		top:50%;
		left:50%;
		color:white;
		font-size:60px;	
		transform: translate(-50%, -50%);
	
}
	
.bottom-left{
	position:absolute;
	bottom:100px;
	left:16px;
	font-size:20px;
	
}
.bottom-center{
	position:absolute;
	bottom:100px;
	left:650px;
	font-size:20px;
}
.bottom-right{
	position:absolute;
	bottom:100px;
	right:16px;
	font-size:20px;
}
h1{
	font-family:century gothic;
	
}
p{
	font-family:century gothic;
	font-style:italic;
	text-align:left;
}



</style>
</head>
<body>

<center><h1>Edit Booking</h1></center>
	<table width="500" height="300">
	
	<form action="UpdateBooking-Process.jsp" method ="post">
	<tr>
		
	
	<td>Booking ID:<br/><input type="hidden" name="bookingId" value="<%=resultSet.getInt("bookingId") %>"readOnly></td>
	<td>User Name:<br/><input type="text" name="userName" value="<%=resultSet.getString("userName") %>"readOnly></td>
		<td>Customer Name:<br/><input type="text" name="customerName" value="<%=resultSet.getString("customerName") %>" required></td>
		</tr>
		<tr>
						<td>From:<br/><input type="text" name="from" value="<%=resultSet.getString("from") %>" required></td>
						<td>To:<br/><input type="text" name="to" value="<%=resultSet.getString("to") %>" required></td>
					</tr>
					
					<tr>
						<td>Accommodation Type:<br/><select name="accomodationType"  readonly>
												<option value=""><%=resultSet.getString("accomodationType") %></option>
												<option value="Luxury Room">Luxury Room</option>
												<option value="Single Room">Single Room</option>
												<option value="Family Room">Family Room</option>
												<option value="Duluxe Room">Duluxe Room</option>
												</select></td>
						<td>Number Of Nights:<br/><input type="text" name="noNights" value="<%=resultSet.getString("noNights") %>" required></td>
					</tr>
					
					<tr>
						<td>No of Adults:<br/><input type="text" name="noAdults" value="<%=resultSet.getString("noAdults") %>" required></td>
						<td>No of Children:<br/><input type="text" name="noChildren" value="<%=resultSet.getString("noChildren") %>" required></td>
					</tr>
					<tr>
						<td>Phone:<br/><input type="text" name="phone" value="<%=resultSet.getString("phone") %>" required></td>
					</tr>
						<td><a href="Bookings.jsp"><input type="submit" value="Cancel"></a></td>
						<td><input type="submit" value="submit"></td>
					</tr>
				
	</form>
	</table>

<% 
}
	connection.close();
}catch(Exception e){
e.printStackTrace();
}
%>
</body>
</html>
 