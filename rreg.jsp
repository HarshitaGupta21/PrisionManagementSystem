<%-- 
    Document   : rreg
    Created on : Jun 22, 2017, 7:19:55 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid,rem,hdate,ndate,pname="",ptype="";
pid=request.getParameter("pid");
rem=request.getParameter("rem");
hdate=request.getParameter("hdate");
ndate=request.getParameter("ndate");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement p=con.prepareStatement("select * from addpri where pid='"+pid+"'");
ResultSet rss = p.executeQuery();
if(rss.next())
{
pname=rss.getString("pname");
ptype=rss.getString("ptype");
}
PreparedStatement ps = con.prepareStatement("insert into addr (pid,pname,rem,hdate,ndate,type) values ('"+pid+"','"+pname+"','"+rem+"','"+hdate+"','"+ndate+"','"+ptype+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Remand Case Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("remand.jsp");
    rd.include(request, response);
%>