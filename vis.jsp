<%-- 
    Document   : vis
    Created on : Jun 22, 2017, 9:01:20 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid,vname,ld,nd,itime,otime,iauth,addr,relation,gender,pname="";
pid=request.getParameter("pid");
pname=request.getParameter("pname");
vname=request.getParameter("vname");
ld=request.getParameter("ldate");
nd=request.getParameter("ndate");
itime=request.getParameter("itime");
otime=request.getParameter("otime");
iauth=request.getParameter("iauth");
addr=request.getParameter("addr");
relation=request.getParameter("relation");
gender=request.getParameter("gender");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement p=con.prepareStatement("select * from addpri where pid='"+pid+"'");
ResultSet rss = p.executeQuery();
if(rss.next())
{
pname=rss.getString("pname");
}
PreparedStatement ps = con.prepareStatement("insert into addvis (pid,pname,vname,ld,nd,itime,otime,iauth,addr,relation,gender) values ('"+pid+"','"+pname+"','"+vname+"','"+ld+"','"+nd+"','"+itime+"','"+otime+"','"+iauth+"','"+addr+"','"+relation+"','"+gender+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Visitors Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("jailerhome.jsp");
    rd.include(request, response);
%>