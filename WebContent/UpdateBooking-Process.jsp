<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/hotel?autoReconnect=true&useSSL=false"; %>
<%!String un = "root";%>
<%!String password= "root123";%>

<%-- 
<%
String bookingId=request.getParameter("bookingId");
String customerName=request.getParameter("customerName");
String accomodationType=request.getParameter("accomodationType");
String from=request.getParameter("from");
String to=request.getParameter("to");
String noNights=request.getParameter("noNights");
String noAdults=request.getParameter("noAdults");
String noChildren=request.getParameter("noChildren");
String phone=request.getParameter("phone");

if(bookingId != null)
{
Connection con = null;
PreparedStatement ps = null;
int bookingID = Integer.parseInt(bookingId);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,userName,password);
String sql="Update booking set bookingId=?,customerName=?,accomodationType=?,from=?,to=?,noNights=?,noAdults=?,noChildren=?,phone=? where bookingId="+bookingID;
//unsure
ps = con.prepareStatement(sql);
ps.setString(1,bookingId);
ps.setString(2,customerName);
ps.setString(3, accomodationType);
ps.setString(4, from);
ps.setString(5, to);
ps.setString(6, noNights);
ps.setString(7, noAdults);
ps.setString(8, noChildren);
ps.setString(9, phone);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
request.setAttribute("alertMsg", "Updation successfull");
RequestDispatcher dis=request.getRequestDispatcher("Bookings.jsp");
dis.forward(request, response);
}
else
{
out.print("Error Occoured ");
RequestDispatcher dis=request.getRequestDispatcher("Bookings.jsp");
dis.forward(request, response);
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
--%>
<%
int bookingId=Integer.parseInt(request.getParameter("bookingId"));
String customerName=request.getParameter("customerName");
String accomodationType=request.getParameter("accomodationType");
String from=request.getParameter("from");
String to=request.getParameter("to");
String noNights=request.getParameter("noNights");
String noAdults=request.getParameter("noAdults");
String noChildren=request.getParameter("noChildren");
String phone=request.getParameter("phone");
String userName=request.getParameter("userName");

if(bookingId != 0){
Connection con=null;
PreparedStatement ps=null;
//int bookingID=Integer.//parseInt(bookingId);
try{
Class.forName(driverName);
con=DriverManager.getConnection(url,un,password);
String sql="update booking set bookingId = ?, customerName = ?, accomodationType = ?, from = ?, to = ?, noNights = ?, noAdults = ?, noChildren = ?, phone = ?, userName = ? where bookingId = "+bookingId;

ps=con.prepareStatement(sql);
ps.setInt(1,bookingId);
ps.setString(2,customerName);
ps.setString(3,accomodationType);
ps.setString(4,from);
ps.setString(5,to);
ps.setString(6,noNights);
ps.setString(7,noAdults);
ps.setString(8,noChildren);
ps.setString(9,phone);
ps.setString(10,userName);


int i=ps.executeUpdate();
if(i > 0){
out.print("Record updated successfully");
request.setAttribute("alertMsg","Updation Successfull");
RequestDispatcher dis=request.getRequestDispatcher("Bookings.jsp");
dis.forward(request,response);
}
out.print("Error Occoured ");
RequestDispatcher dis=request.getRequestDispatcher("Bookings.jsp");
dis.forward(request, response);
}

catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>


