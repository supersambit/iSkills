<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Home</title>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
		  font-family: Calibri;
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
		
		.divleft {
			width: 50%;
			float: left;
		}
		
		.divright {
			width: 50%;
			float: right;
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
		
		</style>
   </head>
   <body>
		<div class="container">
		  <div class="leftpane">
		  <div class="wordart blues"><span class="text">&emsp;Your Skills</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span style="font-family: Courier; color: #4C4A5E; font-size: 15px;">Hello, ${user.getName()}</span></div>
		  <br/>
		  <h6>&emsp;&emsp;<b>Guidelines for Self Assessment of Technical Skills and Application Knowledge:</b></h6>
		  <div class="divleft" style="padding-left: 100px;">
		  
		  <table style="width: 750px;">
			<tbody style="font-size: 13.5px">
			<tr>
			<td style="width: 53.3333px;"><strong> Score [1-5] :</strong></td>
			<td style="width: 500px;"></td>
			</tr>
			<tr>
			<td style="width: 53.3333px;"><strong>1</strong>&nbsp; &nbsp;:</td>
			<td style="width: 500px;">
			<p>Trained in Application/Technology. Needs&nbsp;guidance for testing the functionality.</p>
			</td>
			</tr>
			<tr>
			<td style="width: 53.3333px;"><strong>2</strong>&nbsp; &nbsp;:</td>
			<td style="width: 500px;">
			<p>Minimum working knowledge &nbsp;in Application/Technology.<br />Has greater than one month of experience in the application functions.</p>
			</td>
			</tr>
			<tr>
			<td style="width: 53.3333px;"><strong>3</strong>&nbsp; &nbsp;:</td>
			<td style="width: 500px;">
			<p>Needs minimal help.&nbsp;Over 3 months of testing experience in the Technology. <br />Some experience in Ambiguity review, Test case Creation and Test Case execution</p>
			</td>
			</tr>
			<tr>
			<td style="width: 53.3333px;"><strong>4</strong>&nbsp; &nbsp;:</td>
			<td style="width: 500px;">
			<p>Good knowledge in the application. Has performed Ambiguity review,<br />Test case Creation and Test Case execution &amp; Regression testing for over 6 months.<br />Able to Test Independently. Has assisted others.</p>
			</td>
			</tr>
			<tr>
			<td style="width: 53.3333px;"><strong>5</strong>&nbsp; &nbsp;:</td>
			<td style="width: 500px;">
			<p>Expert Knowledge of all functions. Able to test independently.<br />Able to provide guidance/mentoring to other testers in the team.<br />Assisted/provided inputs to Customer to finalize Business Requirements or solutions.</p>
			</td>
			</tr>
			</tbody>
			</table>
			<br/>
		  </div>
		  <div class="divright">
		  <c:if test="${user.getRole().equals('Manager') || user.getRole().equals('Admin')}">
		  <div style="text-align: right; font-family: Courier; color: #4C4A5E; font-size: 17px"><form action="${pageContext.request.contextPath}/skillsPage"><b><input type= "submit" class="w3-button w3-black w3-round-xxlarge" value= "View Employee Skills" width="350px" height="40px"></b>&nbsp;</form></div>
		  </c:if>
		  
		  <br/>
		  <div style="text-align: right; font-family: Courier; color: #4C4A5E; font-size: 17px;"><form action="${pageContext.request.contextPath}/skills"><b><input type= "submit" class="w3-button w3-black w3-round-xxlarge" value= "View/Modify Your Skills" width="350px" height="40px"></b>&nbsp;</form></div>
		  <br/>
		  <c:if test="${user.getRole().equals('Admin')}">
		  <div style="text-align: right; font-family: Courier; color: #4C4A5E; font-size: 17px;"><form action="${pageContext.request.contextPath}/editDetails"><b><input type= "submit" class="w3-button w3-black w3-round-xxlarge" value= "Edit Personal Details" width="350px" height="40px"></b>&nbsp;</form></div>
		  </c:if>
		  </div>
		  </div>
		 <div class="middlepane"></div>
		  <div class="rightpane">
		  <div style="text-align: right"><a href="${pageContext.request.contextPath}/logout"><i class='fas fa-sign-out-alt' style='font-size:36px'></i>&nbsp;&nbsp;&nbsp;&nbsp;</a><br/><a href="${pageContext.request.contextPath}/logout">Logout</a>&nbsp;&nbsp;</div>
		</div>
		<div class="footer"><p><i class='fas fa-copyright' style='font-size:14px;'></i><b>IBM INDIA Private Limited.</b></p></div>
     </div>
   </body>
</html>