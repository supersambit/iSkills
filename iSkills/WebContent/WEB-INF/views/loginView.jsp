<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
       <script src='https://kit.fontawesome.com/4f96baa5d1.js'></script>
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
       <meta name='viewport' content='width=device-width, initial-scale=1'>
      <title>Login</title>
      
      <style type="text/css">	
      body, html {
		  width: 100%;
		  height: 100%;
		  margin: 0;
		}
		
		input, select {
		  border: 1px solid #c4c4c4;
		  border-radius: 5px;
		  background-color: #fff;
		  padding: 3px 5px;
		  box-shadow: inset 0 3px 6px rgba(0,0,0,0.2);
		  }
		
		.container {
		  width: 100%;
		  height: 100%;
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
		  <div class="wordart blues"><span class="text">&emsp;Your Skills</span></div>
		  <br/>
		  <div style="text-align: center;">
			<h2><strong><em>Please Login to Continue&nbsp;:</em></strong></h2>
			<br/>
			<form action="login" method="POST">
			<table style="height: 155px; margin-left: auto; margin-right: auto; width: 342px;">
			<tbody>
			<tr>
			<td style="width: 158.25px;">User iD</td>
			<td style="width: 176.75px;"><input name="uname" size="15" type="text" /></td>
			</tr>
			<tr>
			<td style="width: 158.25px;">&nbsp;&nbsp;Password</td>
			<td style="width: 176.75px;"><input name="password" size="15" type="password" /></td>
			</tr>
			<tr>
			<td style="width: 158.25px;">&nbsp; &nbsp; &nbsp;Remember me</td>
			<td style="width: 176.75px;"><input name="rememberMe" type="checkbox" value="Y" /></td>
			</tr>
			<tr>
			<td style="width: 335px;" colspan="2"><input class="w3-button w3-black w3-round-xxlarge" type="submit" value="Login" /></td>
			</tr>
			</tbody>
			</table>
			</form>
			<div style="font-family: Arial;">
			<h4><strong>Login Instructions&nbsp;:</strong></h4>
			<p>Use your IBM employee iD as User iD. Password is your employee iD followed by your IBM date of joining(YYYYMMDD).<br /> Suppose, if your employee iD is '101AA0' and IBM Date of joining is '2019-10-10' as YYYY-MM-DD, <br />Then Your User iD is '101AA0' and Password is '101AA020191010'</p>
			</div>
			<p style="color: red;">${errorString}</p>
			</div>
		  </div>
		  <div class="middlepane"></div>
		  <div class="rightpane">
			<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		  <div style="vertical-align: bottom;"><p style="color: black; font-family: Arial; font-size: 14px;">&nbsp;<i>Skills App for<b><i>&nbsp;IBM-<br/>&nbsp;MetLife</i></b>&nbsp;employees.<br/>&nbsp;</i></p>
		  </div>
		  </div>
 		<div class="footer"><p><i class='fas fa-copyright' style='font-size:14px;'></i><b>IBM INDIA Private Limited.</b></p></div>
     </div>
</html>