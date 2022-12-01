<%-- 
    Document   : reg
    Created on : Jun 22, 2017, 5:07:33 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid,pname,ptype,gender,qual,addre,city,state,pin,edate,rdate;
pid=request.getParameter("pid");
pname=request.getParameter("pname");
ptype=request.getParameter("ptype");
gender=request.getParameter("gender");
qual=request.getParameter("qual");
addre=request.getParameter("addre");
city=request.getParameter("city");
state=request.getParameter("state");
pin=request.getParameter("pin");
edate=request.getParameter("edate");
rdate=request.getParameter("rdate");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement ps = con.prepareStatement("insert into addpri (pid,pname,ptype,gender,qual,addre,city,state,pin,edate,rdate) values ('"+pid+"','"+pname+"','"+ptype+"','"+gender+"','"+qual+"','"+addre+"','"+city+"','"+state+"','"+pin+"','"+edate+"','"+rdate+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Prisoner Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("prisoner.jsp");
    rd.include(request, response);
%>
