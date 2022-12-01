<%-- 
    Document   : creg
    Created on : Jun 22, 2017, 8:00:11 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid,cno,des,pname="",ptype="";
pid=request.getParameter("pid");
cno=request.getParameter("cno");
des=request.getParameter("des");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement p=con.prepareStatement("select * from addpri where pid='"+pid+"'");
ResultSet rss = p.executeQuery();
if(rss.next())
{
pname=rss.getString("pname");
ptype=rss.getString("ptype");
}
PreparedStatement ps = con.prepareStatement("insert into addc (pid,pname,type,cno,des) values ('"+pid+"','"+pname+"','"+ptype+"','"+cno+"','"+des+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Case Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("case.jsp");
    rd.include(request, response);
%>