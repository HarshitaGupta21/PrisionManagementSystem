<%-- 
    Document   : transreg
    Created on : Jun 22, 2017, 6:50:57 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid,fro,too,rea,pname="",type="";
pid=request.getParameter("pid");
fro=request.getParameter("from");
too=request.getParameter("to");
rea=request.getParameter("rea");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
PreparedStatement p=con.prepareStatement("select * from addpri where pid='"+pid+"'");
ResultSet rss = p.executeQuery();
if(rss.next())
{
pname=rss.getString("pname");
type=rss.getString("ptype");
}
PreparedStatement ps = con.prepareStatement("insert into addtrans (pid,pname,fro,too,rea,type) values ('"+pid+"','"+pname+"','"+fro+"','"+too+"','"+rea+"','"+type+"')");
int aa = ps.executeUpdate();
out.println("<script>"
				+"alert('Transfer Details Added Successfully.')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("transfer.jsp");
    rd.include(request, response);
%>