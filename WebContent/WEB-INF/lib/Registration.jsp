<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%

String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String dob = request.getParameter("dob");
String dob = request.getParameter("gender");
String dob = request.getParameter("email");
String dob = request.getParameter("phone");
String dob = request.getParameter("nic");
String dob = request.getParameter("address");
String dob = request.getParameter("salary");
String job = request.getParameter("job");
String dep = request.getParameter("dep");



String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/staff_managment";

String userId = "root";
String password = "jami1998";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
try {
connection = DriverManager.getConnection(
connectionUrl, userId, password);
statement = connection.createStatement();

String sql = "INSERT INTO staff_managment.staff_details VALUES(0,'"+ fname + "','" + lname + "','" + dob + "','" + gender + "','" + email + "','" + phone + "','" + nic + "','" + address + "','" + salary + "','" + job + "','" + dep + "')";
int flage = statement.executeUpdate(sql);

} catch (Exception e) {
e.printStackTrace();
}

%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Registration.jsp">
<table>


<tr>
<td>fname</td><td><input type="text" id="fname" size="35" /></td>
</tr>
<tr>
<td>lnmae</td>
<td><input type=text name="lname" size="35" /></td>
</tr>
<tr>
<td>dob</td>
<td><input type="password" name="dob" size="35" /></td>
</tr>
<tr>
<td>gen</td>
<td><input type="password" name="gender" size="35" /></td>
</tr> 
<tr>
<td>em</td>
<td><input type="password" name="email" size="35" /></td>
</tr>
<tr>
<td>4n</td>
<td><input type="password" name="phone" size="35" /></td>
</tr>
<tr>
<td>nic</td>
<td><input type="password" name="nic" size="35" /></td>
</tr>
<tr>
<td>ads</td>
<td><input type="password" name="address" size="35" /></td>
</tr>
<tr>
<td>sal</td>
<td><input type="password" name="salry" size="35" /></td>
</tr>
<tr>
<td>name</td>
<td><input type="text" name="job" size="35" /></td>
</tr>
<tr>
<td>email</td>
<td><input type="text" name="dep" size="35" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="insert" value="Save"></td>
</tr>
</table> 
</form>
</body>
</html>