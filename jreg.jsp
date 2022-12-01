<%-- 
    Document   : jreg
    Created on : Jun 22, 2017, 8:19:15 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String jid,jname,gender,age,ser,mobile,jdate;
jid=request.getParameter("jid");
jname=request.getParameter("jname");
age=request.getParameter("age");
gender=request.getParameter("gender");
ser=request.getParameter("ser");
mobile=request.getParameter("mobile");
jdate=request.getParameter("jdate");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement ps = con.prepareStatement("insert into addjai (jid,jname,gender,age,ser,mobile,jdate) values ('"+jid+"','"+jname+"','"+gender+"','"+age+"','"+ser+"','"+mobile+"','"+jdate+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Jailer Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");
    rd.include(request, response);
%>
