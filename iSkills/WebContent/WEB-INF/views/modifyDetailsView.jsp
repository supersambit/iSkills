<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Update Details</title>
      <meta name='viewport' content='width=device-width, initial-scale=1'>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <script src='https://kit.fontawesome.com/4f96baa5d1.js'></script>
      <style type="text/css">	
      body, html {
		  width: 100%;
		  height: 100%;
		  margin: 0;
		}
		
		a {
     	text-decoration: none;
     	color: black;
    	}
		
		.container {
		  width: 100%;
		  height: 100%;
		  font-family: Algerian;
		}
		
		.leftpane {
		    width: 85%;
		    height: 100%;
		    float: left;
		    background-color: #01BBFF;
		    border-collapse: collapse;
		}
		
		.middlepane {
		    width: 4%;
		    height: 100%;
		    float: left;
		    background-color: #3F51B5;
		    border-collapse: collapse;
		}
		
		.rightpane {
		  width: 11%;
		  height: 100%;
		  position: relative;
		  float: right;
		  background-color: #98CE57;
		  border-collapse: collapse;
		}
		
		.footer {
		position: fixed;
		   left: 0;
		   bottom: 0;
		   width: 100%;
		   height: 7%;
		   background-color: black;
		   color: silver;
		   text-align: center;
		   font-family: Comic Sans MS;
		}
		
		.rcorners {
			border-radius: 13px;
			border: 2px dotted black;
		    padding: 5px;
		    font-family: trebuchet ms,helvetica,sans-serif;
		}
		
		.wordart {
		  font-family: Arial, sans-serif;
		  font-size: 3em;
		  font-weight: bold;
		  position: relative;
		  z-index: 1;
		  display: inline-block;
		  -webkit-font-smoothing: antialiased;
		  -moz-osx-font-smoothing: grayscale;
		}
		
		.wordart.blues .text {
		    font-family: Impact, sans-serif;
		    color: #5FEAFE;
		    -webkit-text-stroke: 0.05em #0000aa;
		    filter: progid:DXImageTransform.Microsoft.Glow(Color=#0000aa,Strength=1);
		    text-shadow: -0.23em -0.18em 2px #006899;
		    letter-spacing: -0.05em;
		}
		
		input, select {
		  border: 1px solid #c4c4c4;
		  border-radius: 5px;
		  background-color: #fff;
		  padding: 3px 5px;
		  box-shadow: inset 0 3px 6px rgba(0,0,0,0.2);
		 }
		 
		 hr {
			width: 99%;
			margin:5px;
			border-color: black;
			border-width:2px;
		}
		  
		</style>
   </head>
   <body>
		<div class="container">
		<div class="leftpane">		  
		  <div class="wordart blues"><span class="text">&emsp;Your Skills</span></div>
		   <div style="text-align: center; font-family: Arial; color: #4C4A5E; font-size:30px; text-shadow: 0.09em -0.02em 0px #000000;"><strong>Update Your Personal Details</strong></div>
		  <div>
					<div style="font-size:17px; font-family:georgia,serif;">&emsp;<form action="${pageContext.request.contextPath}/home"><strong><em>&emsp;Personal Details :</em></strong><span style="text-align: center; float: right; font-family: Courier; color: #4C4A5E;">
						<input class="w3-button w3-black w3-round-xxlarge" type="submit" style="font-size:14px" value="Cancel" width="300px" />&nbsp;</span></form>
				</div>
					<hr style="width: 20%">
					<form action="editDetails" method="post">
					<table align="center" style="height: 130px">
						<tbody>
							<tr>
								<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Name :&nbsp;&nbsp;<strong><input type="text" name="iname" size="25" value="${user.getName()}"></strong></td>
								<td style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Employee ID :&nbsp;<strong>${user.getEid()}</strong></td>
								<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Joined IBM on :&nbsp;<strong>${user.getDoj()}</strong></td>
							</tr>
							<tr>
								<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Portfolio Manager :&nbsp;<strong><input type="text" name="ipm" size="16" value="${user.getPm()}"></strong></td>
								<td style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">IBM Mail ID :&nbsp;<strong>${user.getImid()}</strong></td>
								<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Joined MetLife on :&nbsp;<strong>${user.getMetstart()}</strong></td>
							</tr>
							<tr>
								<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">People Manager :&nbsp;<strong><input name="ipem" type="text" size="18" value="${user.getPem()}"></strong></td>
								<td>&nbsp;</td>
								<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">&nbsp;</td>
							</tr>
						</tbody>
					</table>
					<div style="width: 350px; text-align: center; vertical-align: middle; font-size:14px; font-family: Courier; color: #4C4A5E;"><input class="w3-button w3-black w3-round-xxlarge" type="submit" style="font-size:14px" value="Modify" width="300px" />&nbsp;</div>
					</form>

			</div>
		<br/>
		<br/>
		<hr>
		<br/>
		<br/>
		<br/>
		<br/>		  
		</div>
		 <div class="middlepane"></div>
		  <div class="rightpane">
		  <div style="text-align: right"><a href="${pageContext.request.contextPath}/logout"><i class='fas fa-sign-out-alt' style='font-size:36px'></i>&nbsp;&nbsp;&nbsp;&nbsp;</a><br/><a href="${pageContext.request.contextPath}/logout">Logout</a>&nbsp;&nbsp;</div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-user' style='font-size:80px'></i></div>
			<br/>
		</div>
		<div class="footer"><p><i class='fas fa-copyright' style='font-size:14px;'></i><b>IBM INDIA Private Limited.</b></p></div>
     </div>
    </body>
   </html>s