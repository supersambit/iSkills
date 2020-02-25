<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Update Experience</title>
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
		   <div style="text-align: center; font-family: Arial; color: #4C4A5E; font-size:30px; text-shadow: 0.09em -0.02em 0px #000000;"><strong>Update Your Experience</strong></div>
		  <div>
					<div style="font-size:17px; font-family:georgia,serif;">&emsp;<form action="${pageContext.request.contextPath}/skills"><strong><em>&emsp;Personal Details :</em></strong><span style="text-align: center; float: right; font-family: Courier; color: #4C4A5E;">
						<input class="w3-button w3-black w3-round-xxlarge" type="submit" style="font-size:14px" value="Cancel" width="300px" />&nbsp;</span></form>
				</div>
					<hr style="width: 20%">
					<table align="center" style="height: 130px">
						<tbody>
							<tr>
								<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Name :&nbsp;<strong>${user.getName()}</strong></td>
								<td style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Employee ID :&nbsp;<strong>${user.getEid()}</strong></td>
								<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Joined IBM on :&nbsp;<strong>${user.getDoj()}</strong></td>
							</tr>
							<tr>
								<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Portfolio Manager :&nbsp;<strong>${user.getPm()}</strong></td>
								<td style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">IBM Mail ID :&nbsp;<strong>${user.getImid()}</strong></td>
								<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Joined MetLife on :&nbsp;<strong>${user.getMetstart()}</strong></td>
							</tr>
							<tr>
								<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">People Manager :&nbsp;<strong>${user.getPem()}</strong></td>
								<td style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">&nbsp;</td>
								<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
		<br />
		<form action="updateExp" method="POST">
		<div class="rcorners">&nbsp;<strong>&nbsp;</strong>&emsp;
		<table style="height: 59px;">
		<tbody>
		<tr>
		<td style="width: 260px; font-family: Georgia; font-size: 16px;"><strong><em>Employee Experience :</em></strong></td>
		<td style="width: 260px;"><strong>Total:</strong>&nbsp;<input type="number" step="0.01" name= "inexp" value="${user.getExp()}"/></td>
		<td style="width: 260px;"><strong>Testing:</strong>&nbsp;<input type="number" step="0.01" name= "intexp" value="${user.getTexp()}"/></td>
		<td style="width: 280px;"><strong>Insurance:</strong>&nbsp;<input type="number" step="0.01" name= "iniexp" value="${user.getIexp()}"/></td>
		</tr>
		<tr>
		<td style="width: 260px;"><strong><em>(in Years)</em></strong></td>
		<td style="width: 260px;">&nbsp;</td>
		<td style="width: 260px;">&nbsp;</td>
		<td style="width: 260px;">&nbsp;</td>
		</tr>
		</tbody>
		</table>
		<br/>
		<br/>
		<div style="text-align: center; font-family: Courier; color: #4C4A5E;"><input type= "submit" class="w3-button w3-black w3-round-xxlarge" value= "Update" width="150px" height="40px"></div>
		 </div>
		  </form>
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
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-landmark' style='font-size:80px'></i></div>
		</div>
		<div class="footer"><p><i class='fas fa-copyright' style='font-size:14px;'></i><b>IBM INDIA Private Limited.</b></p></div>
     </div>
    </body>
   </html>