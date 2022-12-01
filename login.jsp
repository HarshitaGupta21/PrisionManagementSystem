<%-- 
    Document   : login
    Created on : Jun 22, 2017, 2:01:49 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name,pass;
        name=request.getParameter("name");
        pass=request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison", "root","root");
        PreparedStatement pss = con.prepareStatement("select * from addjai where jid='"+name+"' and jname='"+pass+"' ");
        ResultSet rs = pss.executeQuery();
        if(rs.next())
        {
        out.println("<script>"
				+"alert('Welcome Jailer.....')"
				+"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("jailerhome.jsp");
        rd.include(request, response);
        }
        else if(name.equals("admin")&&pass.equals("admin"))
        {
        out.println("<script>"
				+"alert('Welcome Admin.....')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");
    rd.include(request, response);
        }
        else
        {
        out.println("<script>"
				+"alert('Invalid Username and Password.....')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
    rd.include(request, response);
        }
        %>
    </body>
</html>
