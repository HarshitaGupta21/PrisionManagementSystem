<%-- 
    Document   : jailerreg
    Created on : Jun 22, 2017, 2:53:03 PM
    Author     : DLK 1
--%>

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
                <a href="adminhome.jsp">Home</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
                <a href="prisoner.jsp">Prisoner</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="training.jsp">Training</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="transfer.jsp">Transfer</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="remand.jsp">Remand Case</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> 
		<a href="education.jsp">Education Details</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" />
                <a href="case.jsp">Case</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" />
                <a href="detail.jsp">Jailer Details</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" />
                <a href="logout.jsp">Logout</a> 
        </div>
     </div>
    </div>
          <div id="content" style="background: skyblue;"> 
        <%
        int id=0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prison","root","root");
        PreparedStatement ps = con.prepareStatement("select * from addjai");
        ResultSet rss = ps.executeQuery();
        while(rss.next())
        {
        id=id+rss.getInt("id");
        }
        String ss="JAI-"+id;       
        %>
        <br>
        <form name="myform" method="post" action="jreg.jsp" style="margin-left: 314px;" >     
            <h1>Add Jailer Details</h1>
        <strong>Jailer Id : </strong>&emsp;&emsp;&nbsp;  <input type="text" style="width: 200px;" name="jid" required="" value="<%=ss%>"><br><br/> 
        <strong>Jailer Name :</strong> &nbsp;&nbsp;&nbsp;<input type="text" style="width: 200px;" name="jname" required="" >&emsp;&emsp; <br><br/> 
        <strong>Gender :</strong>&emsp;&emsp;&nbsp;&nbsp;&nbsp; <input type="text" name="gender" required=""  style="width: 200px;" >&emsp;&emsp;<br><br/> 
        <strong>Age :</strong> &emsp;&emsp;&emsp;&emsp;&nbsp;<input type="text" name="age" value="" required="" style="width: 200px;" /><br><br>
        <strong>Service :</strong> &emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type="text" name="ser" style="width: 200px;" required="" > &emsp;&emsp;<br><br/> 
        <strong>Mobile :</strong> &emsp;&emsp;&emsp;<input type="text" name="mobile" required=""  style="width: 200px;"><br><br/> 
        <strong>Joining Date : </strong>&nbsp;&nbsp;<input id="datetime"  required=""   name="jdate" required=""   style="text-align: inherit;font-size: larger;" ><a href="javascript:NewCal('datetime','ddmmmyyyy')">
                <img src="cal.gif" width="16" height="16" border="0" alt="Pick a date" /></a><br><br/> 
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" style="width: 100px;height: 32px;" value="Register"></input><br><br/>  
        </form>  
    </div>
     </div>
  <img src="images/footer.jpg" width="1000" height="176" alt="" class="flt" style="margin-top:15px;" />
  </div>
  </div>

</body>
</html>
