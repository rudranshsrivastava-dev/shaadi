<%@page import="java.sql.*"%>
<%
try
{
string uname,pass;
uname=request.getParameter("uname");
pass=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cstechnocrat","","");
Statement smt=createStatement("select * from registration;");
Resultset rs=smt.executeQuery();
while(rs.next())
{
if((rs.getString(1).equals(uname)&&(rs.getString(2).equals(pass)))
{
out.println("login");
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
