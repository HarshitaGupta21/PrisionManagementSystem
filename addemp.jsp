<%-- 
    Document   : addemp
    Created on : Jun 22, 2017, 2:53:12 PM
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
<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
</head>
<body>
<div id="wh_bg">
  <div id="bg_bg">
      <br>
    <div id="top">
      <div class="top1" style="width: 1000px;"></div>
       <div id="menu">
            <div class="men_tp"> 
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
          <%
        int id=1;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
        PreparedStatement ps = con.prepareStatement("select * from addemp");
        ResultSet rss = ps.executeQuery();
        while(rss.next())
        {
        id=id+rss.getInt("id");
        }
        String ss="EMP-"+id;       
        %>
        <br>
    <div id="content" style="background: skyblue;"> 
    <form name="myform" method="post" action="empreg.jsp" style="margin-left: 314px;" >     
            <h1>Add Employee Details</h1>
        <strong>Employee Id : </strong>&emsp;&emsp;&nbsp;  <input type="text" style="width: 200px;" name="eid" required="" value="<%=ss%>"><br><br/> 
        <strong>Employee Name :</strong>&emsp;<input type="text" style="width: 200px;" name="ename" required="" >&emsp;&emsp; <br><br/> 
        <strong>Gender :</strong>&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; <input type="text" name="gender" required=""  style="width: 200px;" >&emsp;&emsp;<br><br/> 
        <strong>Qualification :</strong> &emsp;&emsp;&nbsp;<input type="text" name="deg" value="" required="" style="width: 200px;" /><br><br>
        <strong>Service :</strong> &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;<input type="text" name="ser" style="width: 200px;" required="" > &emsp;&emsp;<br><br/> 
        <strong>Salary:</strong> &emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="sal" required=""  style="width: 200px;"><br><br/> 
        <strong>Joining Date :</strong>&emsp;&emsp;&nbsp;&nbsp;<input id="datetime1"  required=""  name="jdate"  style="text-align: inherit;font-size: larger;"><a href="javascript:NewCal('datetime1','ddmmmyyyy')">
                <img src="cal.gif" width="16" height="16" border="0" alt="Pick a date" /></a><br><br/>   
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" style="width: 100px;height: 32px;" value="Register"></input><br><br/>  
        </form>  
    </div>
	
      <img src="images/footer.jpg" width="1000" height="176" alt="" class="flt" style="margin-top:15px;" />
     
  </div>
</div>
</body>
</html>
