<%-- 
    Document   : ereg
    Created on : Jun 22, 2017, 7:38:19 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid,cid,cname,dur,sdate,itime,otime,pname="",ptype="";
pid=request.getParameter("pid");
cid=request.getParameter("cid");
cname=request.getParameter("cname");
dur=request.getParameter("dur");
sdate=request.getParameter("sdate");
itime=request.getParameter("itime");
otime=request.getParameter("otime");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement p=con.prepareStatement("select * from addpri where pid='"+pid+"'");
ResultSet rss = p.executeQuery();
if(rss.next())
{
pname=rss.getString("pname");
ptype=rss.getString("ptype");
}
PreparedStatement ps = con.prepareStatement("insert into adde (pid,pname,cid,cname,dur,sdate,itime,otime) values ('"+pid+"','"+pname+"','"+cid+"','"+cname+"','"+dur+"','"+sdate+"','"+itime+"','"+otime+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Education Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("education.jsp");
    rd.include(request, response);
%>