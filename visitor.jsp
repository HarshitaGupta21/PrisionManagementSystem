<%-- 
    Document   : visitor
    Created on : Jun 22, 2017, 2:52:54 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prison Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="wh_bg">
  <div id="bg_bg">
      <br>
    <div id="top">
      <div class="top1" style="width: 1000px;"></div>
       <div id="menu">
            <div class="men_tp" style="margin-left: -30px;"> 
              <a href="jailer.jsp">Jailer</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="prisoner.jsp">Prisoner</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="visitor.jsp">Visitor</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="jailerreg.jsp">Jailer Register</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="addemp.jsp">Add Employee</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="viewemp.jsp">View Employee</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" />
                <a href="logout.jsp">Logout</a> 
        </div>
     </div>
    </div>
    <div id="content"> 
       <center>
                                                <h2 >Visitors Details</h2><br>
                                                                   <%
        try{        
    %>
  
     <table id="pro_display_table" border="0" cellspacing="1px"  style="border: 4px solid #FB9217; width:auto;height: auto;">
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
         <tr>  
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Prisoner Id</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Prisoner Name</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;&emsp;Visitor Name</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;In Time</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Out Time</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Visiting Date</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Issued Authority</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Relation</strong>&emsp;</b></td>
                                </tr>
         <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
<% 
           
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison", "root","root");
                        String Query22="select * from addvis ";
                        PreparedStatement ps22=con.prepareStatement(Query22);
                        ResultSet rs22=ps22.executeQuery();
                        while(rs22.next())
                        {                                         
                        %>
                                <tr>  
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&emsp;<%=rs22.getString("pid")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&emsp;<%=rs22.getString("pname")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&emsp;&emsp;<%=rs22.getString("vname")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;<%=rs22.getString("itime")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&nbsp;<%=rs22.getString("otime")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&nbsp;<%=rs22.getString("ld")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&nbsp;<%=rs22.getString("iauth")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;<%=rs22.getString("relation")%>&emsp;</td>
                                <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
                                    <%}%>
              </table>

               <%//}
                                     
   }catch(Exception e){
   System.out.println(e);
   }
   %>  
                                            </center>	 
    </div>
     </div>
  <img src="images/footer.jpg" width="1000" height="176" alt="" class="flt" style="margin-top:15px;" />
  </div>
  </div>

</body>
</html>
