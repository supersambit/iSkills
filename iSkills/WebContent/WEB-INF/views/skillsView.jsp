<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>User Skills</title>
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
    	padding: 5px;
    	}
		
		.container {
		  width: 100%;
		  height: 230%;
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
		  position: fixed;
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
		
		hr{
		width: 99%;
		margin:5px;
		border-color: black;
		border-width:2px;
		}
		
		.divleft {
			float: left;
		}
		
		.divright {
			float: right;
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
				<div class="wordart blues"><span class="text">&emsp;Your Skills</span></div>
				<br />
				<br />
				<div>
					<div style="font-size:17px; font-family:georgia,serif;">&emsp;<form action="${pageContext.request.contextPath}/home"><strong><em>&emsp;Personal Details :</em></strong><span style="text-align: center; float: right; font-family: Courier; color: #4C4A5E;">
						<input class="w3-button w3-black w3-round-xxlarge" type="submit" style="font-size:13px" value="Back to home" width="300px" />&nbsp;</span></form>
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
				<hr>
				<br />
				<div>
					<div style="font-size:16px;font-family:georgia,serif;"><em><strong>&emsp;Employee Experience(in years) :</strong></em></div>
					<table align="center" style="height: 60px">
						<tbody>
							<tr>
								<td style="width: 250px; text-align: center; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Total :&nbsp;<strong>${user.getExp()}</strong></td>
								<td style="width: 250px; text-align: center; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Testing :&nbsp;<strong>${user.getTexp()}</strong></td>
								<td style="width: 250px; text-align: center; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">Insurance :&nbsp;<strong>${user.getIexp()}</strong></td>
								<td style="width: 200px; text-align: right; vertical-align: middle;">
									<form action="updateExp">
									<input class="w3-button w3-black w3-round-xxlarge" type="submit" value="Update Experience" style="font-family: Courier;"/></form>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<hr>
				<br />
				<div>
						<div style="font-size:16px;font-family:georgia,serif;"><em><strong>&emsp;Employee Skills &amp; Self-Assessment Score :</strong></em></div>
					    <br/>
					    <table align="center" >
						<tbody>
							<tr style="height: 32px;">
								<td style="width: 250px; color: #4A3D3D; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>Technical Skills :</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs1()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs2()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs3()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs4()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs5()}</strong></td>
							</tr>
							<tr>
								<td style="width: 250px; color: #4A3D3D; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>Self Assessment Score(1-5) :</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs1p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs2p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs3p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs4p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getTs5p()}</strong></td>
							</tr>
						</tbody>
					</table>
					<br />
					<br />
					<table align="center">
						<tbody>
							<tr style="height: 35px;">
								<td style="width: 250px; color: #4A3D3D; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>MetLife Application Knowledge :</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet1()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet2()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet3()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet4()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet5()}</strong></td>
							</tr>
							<tr>
								<td style="width: 250px; color: #4A3D3D; height: 20px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>Self Assessment Score(1-5) :</strong></td>
								<td style="width: 150px; height: 20px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet1p()}</strong></td>
								<td style="width: 150px; height: 20px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet2p()}</strong></td>
								<td style="width: 150px; height: 20px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet3p()}</strong></td>
								<td style="width: 150px; height: 20px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet4p()}</strong></td>
								<td style="width: 150px; height: 20px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet5p()}</strong></td>
							</tr>
							<tr style="height: 40px">
								<td style="width: 250px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">&nbsp;</td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet6()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet7()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet8()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet9()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet10()}</strong></td>
							</tr>
							<tr>
								<td style="width: 250px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">&nbsp;</td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet6p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet7p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet8p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet9p()}</strong></td>
								<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${skills.getMet10p()}</strong></td>
							</tr>
						</tbody>
					</table>
				</div>
				    <br /><hr>
				<div>
				<br />
				<div style="font-size:16px;font-family:georgia,serif;"><em><strong>&emsp;Employee Qualification &amp; Certifications :</strong></em></div>
					<br/>
					<table align="center">
						<tbody>
							<tr>
								<td style="width: 270px; color: #4A3D3D; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>Highest Qualifications :</strong></td>
								<td style="width: 205px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${q.getHq1()}</strong></td>
								<td style="width: 205px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${q.getHq2()}</strong></td>
								<td style="width: 205px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${q.getHq3()}</strong></td>
							</tr>
							<tr>
								<td style="width: 270px; color: #4A3D3D; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>Institutions :</strong></td>
								<td style="width: 205px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${q.getInst1()}</strong></td>
								<td style="width: 205px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${q.getInst2()}</strong></td>
								<td style="width: 205px; height: 25px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;"><strong>${q.getInst3()}</strong></td>
							</tr>
						</tbody>
					</table>
					<br />
					<br />
					<table align="center">
						<tbody>
						<tr>
						<td style="width: 200px; color: #4a3d3d; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>Certifications :</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC1()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC2()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC3()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC4()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC5()}</strong></td>
						</tr>
						<tr>
						<td style="width: 200px; color: #4a3d3d; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>Institutions :</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC1i()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC2i()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC3i()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC4i()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getC5i()}</strong></td>
						</tr>
						<tr>
						<td style="width: 200px; color: #4a3d3d; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>Month & Year of Certification(MM/YYYY):</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getCm1()}/${skills.getCy1()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;">&nbsp;<strong>${skills.getCm2()}/${skills.getCy2()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;">&nbsp;<strong>${skills.getCm3()}/${skills.getCy3()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;">&nbsp;<strong>${skills.getCm4()}/${skills.getCy4()}</strong></td>
						<td style="width: 150px; height: 25px; text-align: left; vertical-align: middle; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;">&nbsp;<strong>${skills.getCm5()}/${skills.getCy5()}</strong></td>
						</tr>
						</tbody>
						</table>
						</div>
						<br /><hr /><br />
						<div>
						<div style="font-size: 16px; font-family: georgia,serif;"><em><strong>&emsp;Awards &amp; Recognitions :</strong></em></div>
						<br />
						<table align="center">
						<tbody>
						<tr>
						<td style="width: 300px; text-align: left; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getAr1()} -&nbsp;${skills.getAy1()}</strong></td>
						<td style="width: 300px; text-align: left; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getAr2()} -&nbsp;${skills.getAy2()}</strong></td>
						<td style="width: 300px; text-align: left; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getAr3()} -&nbsp;${skills.getAy3()}</strong></td>
						</tr>
						<tr>
						<td style="width: 300px; text-align: left; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getAr4()} -&nbsp;${skills.getAy4()}</strong></td>
						<td style="width: 300px; text-align: left; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getAr5()} -&nbsp;${skills.getAy5()}</strong></td>
						<td style="width: 300px; text-align: left; font-family: trebuchet ms,helvetica,sans-serif; font-size: 14px;"><strong>${skills.getAr6()} -&nbsp;${skills.getAy6()}</strong></td>
						</tr>
						</tbody>
						</table>
					<br />
				</div>
				<hr>
				<br />
				<div style="text-align: center; font-family: Courier; color: #4C4A5E;">
					<form action="${pageContext.request.contextPath}/home">
						<input class="w3-button w3-black w3-round-xxlarge" height="40px" type="submit" value="Back to home" width="350px" />&emsp;<a href="${pageContext.request.contextPath}/modifySkills"><i class='fas fa-edit' style='font-size:20px'></i></a><strong><a href="${pageContext.request.contextPath}/modifySkills">Modify</a></strong>&nbsp;</form>
				</div>
		</div>
		<div class="middlepane">&nbsp;</div>
		<div class="rightpane">
		  	<div class="divleft">&emsp;<a href="${pageContext.request.contextPath}/modifySkills"><i class='fas fa-edit' style='font-size:36px'></i></a><br>&emsp;<a href="${pageContext.request.contextPath}/modifySkills">Modify</a></div>
		  	<div class="divright"><a href="${pageContext.request.contextPath}/logout"><i class='fas fa-sign-out-alt' style='font-size:36px'></i>&nbsp;</a>&emsp;<br><a href="${pageContext.request.contextPath}/logout">Logout</a></div>
			<br/>
			<br/>
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
			<div style="text-align: center"><i class='fas fa-landmark' style='font-size:70px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-laptop-code' style='font-size:40px'></i>&nbsp;<i class='fas fa-tools' style='font-size:40px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-sitemap' style='font-size:45px'></i></div>
			<br/>
			<div style="text-align: center"><i class='fas fa-cogs' style='font-size:45px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-graduation-cap' style='font-size:70px'></i></div>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-certificate' style='font-size:50px'></i>&nbsp;<i class='fas fa-medal' style='font-size:50px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-award' style='font-size:78px'></i></div>
		</div>
		 <div class="footer"><p><i class='fas fa-copyright' style='font-size:14px;'></i><b>IBM INDIA Private Limited.</b></p></div>
     </div>   
   </body>
</html>