<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Access Denied</title>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <style type="text/css">	
      body, html {
		  width: 100%;
		  height: 100%;
		  margin: 0;
		}
		
		.container {
		  width: 100%;
		  height: 100%;
		}
		
		.leftpane {
		    width: 87%;
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
		  width: 9%;
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
		</style>
   </head>
   <body>
		<div class="container">
		  <div class="leftpane">
		  <div class="wordart blues"><span class="text">&emsp;your Skills</span></div>
		  <br/>
		  <br/>
		  <br/>
		  <br/>
		  <div style="text-align: center; color: red;"><h1>Access Restricted</h1></div>
		  <br/>
		  <div style="text-align: center;">
		  <p>You Do not have permission to access the web page you requested for!</p>
		  <div style="text-align: center; font-family: Courier; color: #4C4A5E;"><form action="${pageContext.request.contextPath}/home"><input type= "submit" class="w3-button w3-black w3-round-xxlarge" value= "Back to home" width="350px" height="40px"></form></div>
		  </div>
		  </div>
		 <div class="middlepane"></div>
		  <div class="rightpane"></div>
		  <div class="footer"><p><i class='fas fa-copyright' style='font-size:14px;'></i><b>IBM INDIA Private Limited.</b></p></div>
		</div>
   </body>
</html>