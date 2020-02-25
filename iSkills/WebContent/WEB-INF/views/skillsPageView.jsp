<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Skills Grid</title>
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
    	
    	table {
		  border-collapse: collapse;
		  
		}
		
		 tbody { 
			display: block;
			border: 1px solid white;
	     
		 }
		
		table, td {
		  border: 1px solid black;
		}
		
		th {
		background-color: black;
		color: white;
		border: 1px solid white;
		position: -webkit-sticky;
    	position: sticky;
    	top: 0;
   		z-index: 10;
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
		   height: 7%;
		   width: 100%;
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
		  <div style="text-align: center; font-family: Arial; color: #4C4A5E; font-size:30px; text-shadow: 0.09em -0.02em 0px #000000;"><strong>Employee Skills Grid</strong></div>
		  <br/><div style="text-align: right; font-family: Courier; color: #4C4A5E;"><form action="${pageContext.request.contextPath}/home"><input type= "submit" class="w3-button w3-black w3-round-xxlarge" value= "Back to home" width="100px" height="20px"></form></div>
		  
		  <div><form action="${pageContext.request.contextPath}/skillSearch">&emsp;&nbsp;<input name="x" type="text" maxlength="40" size="40" placeholder="Enter Employee name to search"> <input type="submit" class="w3-button w3-black w3-round-xlarge" value="Search"><span style="color: black; font-family: Georgia; font-size: 15px; ">&emsp;&emsp;<strong><em>Click on the Employee ID to view Employee Page.</em></strong></span></form></div>
		  
		  <div style="overflow-x: auto; overflow-y: auto; white-space: nowrap; padding:20px; height:350px; ">		  
		  <c:choose>
		   <c:when test="${userskills==null}">
		     <br/>
		     <br/>
		     <br/>
		     <div style="text-align: center; font-size: 20px">&quot;${msg}&quot;</div>   
		   </c:when>
		   <c:otherwise>
		    <table border="1" cellpadding="10" align="center">
			<tbody>
							<tr style="height: 35px;">
								<th>
									Name</th>
								<th>
									Employee ID</th>
								<th>
									Program Manager</th>
								<th>
									People Manager</th>
								<th colspan="5">
									Technical Skills</th>
								<th colspan="5">
									MetLife Application Skills</th>
								<th colspan="3">
									Certifications</th>
								<th colspan="2">
									Awards &amp; Rcognizations&nbsp;</th>
							</tr>
			<c:forEach var="user" items="${userskills}">
			<tr>
								<td>
									${user.getName()}</td>
								<td style="text-decoration: underline;">
									<a href="employeePage?link=${user.getEid()}">${user.getEid()}</a></td>
								<td style="padding: 5px; white-space: nowrap;">
									${user.getPm()}</td>
								<td style="padding: 5px; white-space: nowrap;">
									${user.getPem()}</td>
								<td style="padding: 5px;">
									${user.getTs1()}</td>
								<td style="padding: 5px;">
									${user.getTs2()}</td>
								<td style="padding: 5px;">
									${user.getTs3()}</td>
								<td style="padding: 5px;">
									${user.getTs4()}</td>
								<td style="padding: 5px;">
									${user.getTs5()}</td>
								<td style="padding: 5px;">
									${user.getMet1()}</td>
								<td style="padding: 5px;">
									${user.getMet2()}</td>
								<td style="padding: 5px;">
									${user.getMet3()}</td>
								<td style="padding: 5px;">
									${user.getMet4()}</td>
								<td style="padding: 5px;">
									${user.getMet5()}</td>
								<td style="padding: 5px;">
									${user.getC1()}</td>
								<td style="padding: 5px;">
									${user.getC2()}</td>
								<td style="padding: 5px;">
									${user.getC3()}</td>
								<td style="padding: 5px;">
									${user.getAr1()}</td>
								<td style="padding: 5px;">
									${user.getAr2()}</td>
							</tr>
			</c:forEach>
			</tbody>
			</table>
		    </c:otherwise>
			</c:choose>		
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