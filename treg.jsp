<%-- 
    Document   : treg
    Created on : Jun 22, 2017, 6:22:47 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid,course,dur,sdate,pname="";
pid=request.getParameter("pid");
course=request.getParameter("course");
dur=request.getParameter("dur");
sdate=request.getParameter("sdate");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement p=con.prepareStatement("select * from addpri where pid='"+pid+"'");
ResultSet rss = p.executeQuery();
if(rss.next())
{
pname=rss.getString("pname");
}
PreparedStatement ps = con.prepareStatement("insert into addtri (pid,pname,course,dur,sdate) values ('"+pid+"','"+pname+"','"+course+"','"+dur+"','"+sdate+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Training Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("training.jsp");
    rd.include(request, response);
%>