<%-- 
    Document   : empreg
    Created on : Jun 22, 2017, 8:35:36 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String eid,ename,gender,deg,ser,jdate,sal;
eid=request.getParameter("eid");
ename=request.getParameter("ename");
gender=request.getParameter("gender");
deg=request.getParameter("deg");
ser=request.getParameter("ser");
jdate=request.getParameter("jdate");
sal=request.getParameter("sal");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement ps = con.prepareStatement("insert into addemp (eid,ename,gender,deg,ser,jdate,sal) values ('"+eid+"','"+ename+"','"+gender+"','"+deg+"','"+ser+"','"+jdate+"','"+sal+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Employee Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");
    rd.include(request, response);
%>
