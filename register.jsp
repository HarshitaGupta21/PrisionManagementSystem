<%-- 
    Document   : register
    Created on : Aug 17, 2016, 12:01:24 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Health Care</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Clinico Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script language="javascript" type="text/javascript">
      var xmlHttp
      var xmlHttp
      function showState(str){
     if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      }
      var url="state.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
          
      document.getElementById("state").innerHTML=xmlHttp.responseText
      }
      }

      function showCity(str){
      if (typeof XMLHttpRequest != "undefined"){
        xmlHttp= new XMLHttpRequest();
        }
      else if (window.ActiveXObject){
        xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
        }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      }
      var url="city.jsp";
       var countryid=$('#country').val();
     
      url +="?count=" +str+"&doctorid="+countryid;
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      function stateChange1(){
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
      document.getElementById("city").innerHTML=xmlHttp.responseText
      }
      }
      function stateChange2(){
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
      document.getElementById("state").innerHTML=xmlHttp.responseText
      }
      }
      </script>
<!-- start-smoth-scrolling -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Cinzel:400,700,900' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="logo"><br>
	<a class="navbar-brand" href="#">Health Care
</a>
<
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-5" id="cl-effect-5">
						<ul class="nav navbar-nav">
							<li><a href="receplogin.jsp" class="active">Receptionist</a></li>
							<li><a href="adminlogin.jsp"><span data-hover="Admin">Admin</span></a></li>
							<li><a href="userlogin.jsp"><span data-hover="User">User</span></a></li>
							<li><a href="doctorlogin.jsp"><span data-hover="Doctor">Doctor</span></a></li>
						</ul>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>
<!-- header -->
<!-- banner -->	
	<div class="banner">
		<div class="container">
			<div class="wmuSlider example1">
				<div class="wmuSliderWrapper">
					<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="banner1">
								
							</div>
						</div>
					</article>
					<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="banner2">
								
							</div>
						</div>
					</article>
					<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="banner3">
								
							</div>
						</div>
					</article>
				</div>
			</div>
							<script src="js/jquery.wmuSlider.js"></script> 
							<script>
								$('.example1').wmuSlider();         
							</script> 
		</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-pos">
				<div class="banner-pos-grid">
					<div class="col-xs-4 banner-pos-grid1">
						<span> </span>
					</div>
					<div class="col-xs-8 banner-pos-grid2">
						<h3>Sed ut persp ciatis mers</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="banner-pos-grid banner-pos-grid-sub">
					<div class="col-xs-4 banner-pos-grid1-sub">
						<span> </span>
					</div>
					<div class="col-xs-8 banner-pos-grid2">
						<h3>Nemo enim ipsam volup</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="banner-pos-grid banner-pos-grid-sub1">
					<div class="col-xs-4 banner-pos-grid1-sub1">
						<span> </span>
					</div>
					<div class="col-xs-8 banner-pos-grid2">
						<h3>Quis autem vel eum mers</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="banner-pos-grid banner-pos-grid-sub2">
					<div class="col-xs-4 banner-pos-grid1-sub2">
						<span> </span>
					</div>
					<div class="col-xs-8 banner-pos-grid2">
						<h3>velit esse quam nihil</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="banner-bottom-grids">
				<div class="col-md-3 banner-bottom-grid">
					<div class="banner-bottom-grid1">
						<h1>Health Care</h1>
						<p>Health care is the maintenance or improvement of health via the diagnosis, treatment, illness & prevention of disease, injury, and other physical and mental impairments in human beings. </p>
						<div class="more">
							<a href="#" class="hvr-curl-bottom-right">Read More...</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid">
					<div class="banner-bottom-grid1">
						<h2>Primary care</h2>
						<p>Primary care involves the widest scope of health care. It refers to the work of health professionals who act as a first point of consultation for all patients within the health care system.</p>
						<div class="more">
							<a href="#" class="hvr-curl-bottom-right">Read More...</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid">
					<div class="banner-bottom-grid1">
						<h3>Health System</h3>
						<p>A health system referred to as health care system is the organization of people & resources to deliver health care services to meet the health needs of target populations.</p>
						<div class="more">
							<a href="#" class="hvr-curl-bottom-right">Read More...</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid">
					<div class="banner-bottom-grid1">
						<h3>Health Care Plans</h3>
						<p>Our comprehensive health plans provide individuals with Medic-aid, Medicare, or both, quality benefits & programs. Access to varies across countries, groups, & individuals</p>
						<div class="more">
							<a href="#" class="hvr-curl-bottom-right">Read More...</a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- events -->
<div class="container"> 
     <center>
         <h2>SignUp</h2><br>
      <form id="form" name="form" action="process1.jsp" method="post">
    <table style="width: 400px; height: auto;"  border="3" style="color:black"  align="center" >
                            <tbody>

                           
                                <tr>
                                <td align="center" width="100">Name:</td>
                                <td><input name="name" type="text" id="name" style="width: 250px;" value="" /></td>
                              </tr>
                               <tr>
                                <td width="152"align="center">Email Address</td>
                                <td><input name="mail" type="text" id="mail" style="width: 250px;" value="" /></td>
                              </tr>
                              <tr>
                                <td width="152"align="center">UserName</td>
                                <td><input name="username" type="text" id="username" style="width: 250px;" value="" /></td>
                              </tr>

                              <tr>
                                <td align="center">Password </td>
                                <td><input name="password" type="password" id="password" style="width: 250px;" value=""/></td>
                              </tr>
			    <tr>
                                <td align="center">Phone No</td>
                                <td><input name="number" type="text" id="number" style="width: 250px;" value="" /></td>
                              </tr>

                                  <tr>
                                <td align="center">Age</td>
                                <td><input name="age" type="text" id="age" style="width: 250px;" value="" /></td>
                              </tr>

                                     <tr>
                                <td align="center">Gender</td>
                                <td>&emsp;&emsp;&emsp;<input type="radio" name="gender" value="male" checked="checked">Male
                                   &emsp;&emsp; <input type="radio" name="gender" value="female">Female</td>
                              </tr>
                              

                           <tr>
                               <td align="center">Pin code</td>
                                <td><input name="code" type="text" id="code" style="width: 250px;" value="" /></td>
                              </tr>

                                <tr> <td align="center">Disease</td>
                                <td><input name="disease" type="text" id="disease" style="width: 250px;" value="" /></td>
                              </tr>


   <tr>  <td align="center">Hospital</td>
                                               <td>
                                     <select id="country" style="width: 250px;"  name='country' onchange="showState(this.value)">
       <option value="none">---------Select------</option>
    <%
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hidden","root","root");
 Statement stmt = con.createStatement();
 ResultSet rs2 = stmt.executeQuery("Select * from doc group by hospital");
 while(rs2.next()){
     %>

     <option value="<%=rs2.getString("hospital")%>"><%=rs2.getString("hospital")%></option>

      <%
 }
     %>
      </select></td></tr>
                                  <tr>  <td align="center">Specialist</td>
                                               <td id='state'>
                                     <select name='state' style="width: 250px;" ><option value="none">--------Select-------</option>
                                     <option value='-1'></option>
                                      </select></td></tr>

                                    
                                      <tr>  <td align="center">Doctor</td>
                                          <td  id='city'>
                                     <select name='city' style="width: 250px;" ><option value="none">--------Select-------</option>
                                    <option value='-1'></option>
                                        </select>
                                         </td></td></tr>
                     
                                     <tr>
                                <td>&nbsp;</td>
                                <td><a href="#" class="style3">
                              
                                </a></td>
                              </tr>
                              <tr>
                                <td colspan="2"><div align="center">
                                        <input type="submit" name="Submit" value="Submit" style="background-color: skyblue" />
                                  &nbsp;  &nbsp; &nbsp;
                                  <input type="reset" name="Submit2" value="Reset" style="background-color: skyblue" />
                                </div></td>
                              </tr>
                            </tbody>
          </table>
			  </form>
    </form>
     </center>
   
     
</div>
<!-- //events -->
<!-- companies -->
	<div class="companies">
		<div class="container">
			<div class="companies-grids">
				<ul id="flexiselDemo1">	
					<li>
						<div class="companies-grid1">
							<div class="col-xs-4 banner-pos-grd1">
								<span> </span>
							</div>
							<div class="col-xs-8 banner-pos-grd2">
								<h3>Information For Patients</h3>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="companies-grid1">
							<div class="col-xs-4 banner-pos-grd2">
								<span> </span>
							</div>
							<div class="col-xs-8 banner-pos-grd2">
								<h3>Professional Training</h3>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="companies-grid1">
							<div class="col-xs-4 banner-pos-grd3">
								<span> </span>
							</div>
							<div class="col-xs-8 banner-pos-grd2">
								<h3>Resources For Professionals</h3>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="companies-grid1">
							<div class="col-xs-4 banner-pos-grd4">
								<span> </span>
							</div>
							<div class="col-xs-8 banner-pos-grd2">
								<h3>Patient Health Library</h3>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
				</ul>
					<script type="text/javascript">
						$(window).load(function() {
						$("#flexiselDemo1").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: false,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems: 2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					 });
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
<!-- //companies -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			
			
			<div class="footer-copy">
				<p>&copy 2016 Clinico. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts.</a></p>
				<ul>
					<li><a href="#" class="twitter"><span type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Follow Us On Twitter"></span></a></li>
					<li><a href="#" class="p"><span type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Follow Us On Pinterest"></span></a></li>
					<li><a href="#" class="facebook" id="facebook"><span type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Follow Us On Facebook"></span></a></li>
					<li><a href="#" class="dribble"><span type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Follow Us On Dribbble"></span></a></li>
					<li><a href="#" class="rss"><span type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Follow Us On RSS"></span></a></li>
					<div class="clearfix"> </div>
				</ul>
				<script>
					$(function () {
					  $('[data-toggle="tooltip"]').tooltip()
					})
				</script>
			</div>
		</div>
	</div>
<!-- //footer -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
	</script>
<!-- //here ends scrolling icon -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>
