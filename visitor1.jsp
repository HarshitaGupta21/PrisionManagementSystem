<%-- 
    Document   : visitor1
    Created on : Jun 22, 2017, 8:54:14 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prison Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
</head>
<body>
<div id="wh_bg">
  <div id="bg_bg">
      <br>
    <div id="top">
      <div class="top1" style="width: 1000px;"></div>
       <div id="menu">
            <div class="men_tp" style="margin-left: -30px;"> 
                <a href="jailerhome.jsp">Home</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="prisoner1.jsp">Prisoner</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="visitor1.jsp">Visitor</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="viewemp1.jsp">View Employee</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" />
                <a href="logout.jsp">Logout</a> 
        </div>
     </div>
    </div>
          <div id="content" style="background: skyblue;"> 
        
        <br>
        <form  method="post" action="vis.jsp" style="margin-left: 314px;" >     
         <h1>Add Visitor Details</h1>
        <strong>Prisoner Id : </strong>&emsp;&emsp;&emsp; 
        <select style="width: 200px;"  name="pid">
       <option value="none">---------Select------</option>
    <%
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
 Statement stmt = con.createStatement();
 ResultSet rs2 = stmt.executeQuery("Select * from addpri");
 while(rs2.next()){
     %>

     <option value="<%=rs2.getString("pid")%>"><%=rs2.getString("pid")%></option>

      <%
 }
     %>
      </select>
        <br><br/> 
        <strong>Visitor Name:</strong>&emsp;&emsp;&nbsp;&nbsp; <input type="text"  required=""  name="vname" style="width: 200px;" >&emsp;&emsp;<br><br/> 
        <strong>Last Visiting Date : </strong>&nbsp;<input id="datetime"  required=""   name="ldate" required=""   style="text-align: inherit;font-size: larger;" ><a href="javascript:NewCal('datetime','ddmmmyyyy')">
                <img src="cal.gif" width="16" height="16" border="0" alt="Pick a date" /></a><br><br/> 
        <strong>Next Visiting Date :</strong>&nbsp;<input id="datetime1"  required=""  name="ndate"  style="text-align: inherit;font-size: larger;"><a href="javascript:NewCal('datetime1','ddmmmyyyy')">
                <img src="cal.gif" width="16" height="16" border="0" alt="Pick a date" /></a><br><br/>   
        <strong>In Time:</strong>&emsp;&emsp;&emsp;&nbsp;&nbsp;&emsp;&nbsp;<input type="text" name="itime" value="" required="" style="width: 200px;" /><br><br>
        <strong>Out Time:</strong>&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="otime" value="" required="" style="width: 200px;" /><br><br>
        <strong>Issuing Authority:</strong>&nbsp;&nbsp; <input type="text"  required=""  name="iauth" style="width: 200px;" >&emsp;&emsp;<br><br/> 
        <strong>Address:</strong>&emsp;&emsp;&emsp;&emsp;&nbsp; <input type="text"  required=""  name="addr" style="width: 200px;" >&emsp;&emsp;<br><br/> 
        <strong>Relation:</strong>&emsp;&emsp;&emsp;&emsp; <input type="text"  required=""  name="relation" style="width: 200px;" >&emsp;&emsp;<br><br/> 
        <strong>Gender:</strong>&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; <input type="text"  required=""  name="gender" style="width: 200px;" >&emsp;&emsp;<br><br/> 
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" style="width: 100px;height: 32px;" value="Add"></input><br><br/>  
        </form>  
    </div>
     </div>
  <img src="images/footer.jpg" width="1000" height="176" alt="" class="flt" style="margin-top:15px;" />
  </div>
  </div>

</body>
</html>
