<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Modify Skills</title>
		<meta content="width=device-width, initial-scale=1" name="viewport" />
		<link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet" />
		<script src='https://kit.fontawesome.com/4f96baa5d1.js'></script>
		<style type="text/css">
body, html {
		  width: 100%;
		  height: 115%;
		  margin: 0;
		}
		
		a {
     	text-decoration: none;
     	color: black;
    	}
    	
    	input[type=number]{
	    width: 50px;
		}
    	
    	table {
    	padding: 10px;
    	}
		
		.container {
		  width: 100%;
		  height: 180%;
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
		   height: 7%;
		   width: 100%;
		   background-color: black;
		   color: silver;
		   text-align: center;
		   font-family: Comic Sans MS;
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
		
		.rcorners {
			border-radius: 13px;
			border: 2px dotted black;
		    padding: 5px;
		    font-size: 13px;
		    font-family:trebuchet ms,helvetica,sans-serif;
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
				<div class="wordart blues">
					&emsp;<span class="text">Your Skills</span></div>
				<div><form action="${pageContext.request.contextPath}/skills">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span style="text-align: center; font-family: Arial; color: #4C4A5E; font-size:30px; text-shadow: 0.09em -0.02em 0px #000000;">
					<strong>Add/Modify Your Skills</strong></span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span><input class="w3-button w3-black w3-round-xxlarge" type="submit" style="font-size:14px" value="Cancel" width="200px" height="40px" /></span></form></div>
				
				<br />
				<div>
					<div style="font-size:17px; font-family:georgia,serif;">&emsp;<strong><em>&emsp;Personal Details :</em></strong></div>
					<hr style="width: 20%">
					<table align="center" style="height: 130px">
			<tbody>
				<tr>
					<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						Name :&nbsp;<strong>${user.getName()}</strong></td>
					<td style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						Employee ID :&nbsp;<strong>${user.getEid()}</strong></td>
					<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						Joined IBM on :&nbsp;<strong>${user.getDoj()}</strong></td>
				</tr>
				<tr>
					<td style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						Portfolio Manager :&nbsp;<strong>${user.getPm()}</strong></td>
					<td style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						IBM Mail ID :&nbsp;<strong>${user.getImid()}</strong></td>
					<td style="width: 280px; text-align: right; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						Joined MetLife on :&nbsp;<strong>${user.getMetstart()}</strong></td>
				</tr>
				<tr>
					<td rowspan="2" style="width: 400px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						People Manager :&nbsp;<strong>${user.getPem()}</strong></td>
					<td rowspan="2" style="width: 350px; text-align: left; vertical-align: middle; font-family:trebuchet ms,helvetica,sans-serif; font-size:14px;">
						Total Experience : <strong>${uexp.getExp()}</strong></td>
					<td style="width: 350px; text-align: right; vertical-align: middle; font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif; font-size: 14px;">
						Testing Experience : <strong>${uexp.getTexp()}</strong></td>
				</tr>
				<tr>
					<td style="width: 350px; text-align: right; vertical-align: middle; font-family: &quot;trebuchet ms&quot;, helvetica, sans-serif; font-size: 14px;">
						Insurance Experience : <strong>${uexp.getIexp()}</strong></td>
				</tr>
			</tbody>
		</table>
				</div>
				<br />
				<br />
				<form action="modSkills">
					<div style="font-size: 12px; color: red;">
						&emsp;&nbsp;&nbsp;<em>*Maximum 30 characters are allowed for Technical Skill</em></div>
					<div class="rcorners">
						<table align="center">
							<tbody>
								<tr style="height: 32px;">
									<td style="width: 250px; height: 32px; text-align: left; vertical-align: middle;">
										<strong>Technical Skills :</strong></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="30" name="its1" size="13" type="text" value="${skills.getTs1()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="30" name="its2" size="13" type="text" value="${skills.getTs2()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="30" name="its3" size="13" type="text" value="${skills.getTs3()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="30" name="its4" size="13" type="text" value="${skills.getTs4()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="30" name="its5" size="13" type="text" value="${skills.getTs5()}" /></td>
								</tr>
								<tr style="height: 10.6667px;">
									<td style="width: 250px; height: 32px; text-align: left; vertical-align: middle;">
										<strong>Self-Assessment Score(1-5) :&nbsp;</strong>
									</td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="1" name="its1p" type="number" max="5" value="${skills.getTs1p()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="1" name="its2p" type="number" max="5" value="${skills.getTs2p()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="1" name="its3p" type="number" max="5" value="${skills.getTs3p()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="1" name="its4p" type="number" max="5" value="${skills.getTs4p()}" /></td>
									<td style="width: 160px; height: 32px; text-align: center; vertical-align: middle;">
										<input maxlength="1" name="its5p" type="number" max="5" value="${skills.getTs5p()}" /></td>
								</tr>
							</tbody>
						</table>
						</div>
						<br />
						<div style="font-size: 12px; color: red;">
							&emsp;<em>*Maximum 30 characters are allowed for Application Knowledge(MetLife)</em></div>
						<div class="rcorners">
						<div style="text-align: center">
							Please Enter your Current MetLife Application in the First Green Text-box.</div>
						<table align="center">
							<tbody>
								<tr style="height: 22px;">
									<td style="width: 250px; height: 22px; text-align: left;">
										<Strong>MetLife Applications known :</Strong></td>
									<td style="width: 160; height: 22px; text-align: center;">
										<input name="imet1" size="10" type="text" maxlength="30" value="${skills.getMet1()}" style="background-color : #98CE57;" /></td>
									<td style="width: 160px; height: 22px; text-align: center;">
										<input name="imet2" size="10" type="text" maxlength="30" value="${skills.getMet2()}" /></td>
									<td style="width: 160px; height: 22px; text-align: center;">
										<input name="imet3" size="10" type="text" maxlength="30" value="${skills.getMet3()}" /></td>
									<td style="width: 160px; height: 22px; text-align: center;">
										<input name="imet4" size="10" type="text" maxlength="30" value="${skills.getMet4()}" /></td>
									<td style="width: 160px; height: 22px; text-align: center;">
										<input name="imet5" size="10" type="text" maxlength="30" value="${skills.getMet5()}" /></td>
								</tr>
								<tr style="height: 32px;">
									<td style="width: 149.667px; height: 32px; text-align: left;">
										<Strong>Self-Assessment Score(1-5) :&nbsp;</Strong></td>
														<td style="width: 166.333px; height: 32px; text-align: center;">
										<input name="imet1p" type="number" max="5" maxlength="1" value="${skills.getMet1p()}" style="background-color : #98CE57;" /></td>
									<td style="width: 132px; height: 32px; text-align: center;">
										<input name="imet2p" type="number" max="5" maxlength="1" value="${skills.getMet2p()}" /></td>
									<td style="width: 118px; height: 32px; text-align: center;">
										<input name="imet3p" type="number" max="5" maxlength="1" value="${skills.getMet3p()}" /></td>
									<td style="width: 134px; height: 32px; text-align: center;">
										<input name="imet4p" type="number" max="5" maxlength="1" value="${skills.getMet4p()}" /></td>
									<td style="width: 180px; height: 32px; text-align: center;">
										<input name="imet5p" type="number" max="5" maxlength="1" value="${skills.getMet5p()}" /></td>
								</tr>
								<tr style="height: 26px;">
									<td style="width: 152px; height: 26px; text-align: left">
										<Strong>Applications(Cont.) :</Strong></td>
									<td style="width: 166.333px; height: 26px; text-align: center;">
										<input name="imet6" size="10" type="text" maxlength="30" value="${skills.getMet6()}" /></td>
									<td style="width: 132px; height: 26px; text-align: center;">
										<input name="imet7" size="10" type="text" maxlength="30" value="${skills.getMet7()}" /></td>
									<td style="width: 118px; height: 26px; text-align: center;">
										<input name="imet8" size="10" type="text" maxlength="30" value="${skills.getMet8()}" /></td>
									<td style="width: 134px; height: 26px; text-align: center;">
										<input name="imet9" size="10" type="text" maxlength="30" value="${skills.getMet9()}" /></td>
									<td style="width: 180px; height: 26px; text-align: center;">
										<input name="imet10" size="10" type="text" maxlength="30" value="${skills.getMet10()}" /></td>
								</tr>
								<tr style="height: 41.6667px;">
									<td style="width: 149.667px; height: 41.6667px;">
										<strong>Self-Assessment Score(1-5) :&nbsp;</strong></td>
									<td style="width: 166.333px; height: 41.6667px; text-align: center;">
										<input name="imet6p" type="number" max="5" maxlength="1"  value="${skills.getMet6p()}" /></td>
									<td style="width: 132px; height: 41.6667px; text-align: center;">
										<input name="imet7p" type="number" max="5" maxlength="1" value="${skills.getMet7p()}" /></td>
									<td style="width: 118px; height: 41.6667px; text-align: center;">
										<input name="imet8p" type="number" max="5" maxlength="1" value="${skills.getMet8p()}" /></td>
									<td style="width: 134px; height: 41.6667px; text-align: center;">
										<input name="imet9p" type="number" max="5" maxlength="1" value="${skills.getMet9p()}" /></td>
									<td style="width: 180px; height: 41.6667px; text-align: center;">
										<input name="imet10p" type="number" max="5" maxlength="1" value="${skills.getMet10p()}" /></td>
								</tr>
							</tbody>
						</table>
						</div>
						<br />
						<div style="font-size: 12px; color: red;">
							&emsp;<em>*Maximum 20 characters are allowed for Certification and 30 characters for Institution</em></div>
						<div class="rcorners">
						<table align="center">
							<tbody>
								<tr>
									<td style="width: 250px;">
										<strong>Certifications :</strong></td>
									<td style="width: 160px;">
										<input name="ic1" size="10" type="text" maxlength="20" value="${skills.getC1()}" /></td>
									<td style="width: 160px;">
										<input name="ic2" size="10" type="text" maxlength="20" value="${skills.getC2()}" /></td>
									<td style="width: 160px;">
										<input name="ic3" size="10" type="text" maxlength="20" value="${skills.getC3()}" /></td>
									<td style="width: 160px;">
										<input name="ic4" size="10" type="text" maxlength="20" value="${skills.getC4()}" /></td>
									<td style="width: 160px;">
										<input name="ic5" size="10" type="text" maxlength="20" value="${skills.getC5()}" /></td>
								</tr>
								<tr>
									<td style="width: 174.333px;">
										<strong>Institutions :</strong></td>
									<td style="width: 164.667px;">
										<input name="ic1i" size="20" type="text" maxlength="30" value="${skills.getC1i()}" /></td>
									<td style="width: 189px;">
										<input name="ic2i" size="20" type="text" maxlength="30" value="${skills.getC2i()}" /></td>
									<td style="width: 184px;">
										<input name="ic3i" size="20" type="text" maxlength="30" value="${skills.getC3i()}" /></td>
									<td style="width: 165px;">
										<input name="ic4i" size="20" type="text" maxlength="30" value="${skills.getC4i()}" /></td>
									<td style="width: 218px;">
										<input name="ic5i" size="20" type="text" maxlength="30" value="${skills.getC5i()}" /></td>
								</tr>
								<tr>
									<td style="width: 250px;">
										<strong>Month & Year : (mm/yyyy)</strong></td>
									<td>
										<input name="icm1" type="number" min="1" max="12" value="${skills.getCm1()}" />/<input name="icy1" style="width: 60px;" type="number" min="1970" max="2030" value="${skills.getCy1()}" /></td>
									<td>
										<input name="icm2" type="number" min="1" max="12" value="${skills.getCm2()}" />/<input name="icy2" style="width: 60px;" type="number" min="1970" max="2030" value="${skills.getCy2()}" /></td>
									<td>
										<input name="icm3" type="number" min="1" max="12" value="${skills.getCm3()}" />/<input name="icy3" style="width: 60px;" type="number" min="1970" max="2030" value="${skills.getCy3()}" /></td>
									<td>
										<input name="icm4" type="number" min="1" max="12" value="${skills.getCm4()}" />/<input name="icy4" style="width: 60px;" type="number" min="1970" max="2030" value="${skills.getCy4()}" /></td>
									<td>
										<input name="icm5" type="number" min="1" max="12" value="${skills.getCm5()}" />/<input name="icy5" style="width: 60px;" type="number" min="1970" max="2030" value="${skills.getCy5()}" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<br/>
					<div style="font-size: 12px; color: red;">
						&nbsp; &nbsp;&nbsp;<em>*Maximum 20 characters are allowed for Qualification and 40 characters for Institution</em></div>
					<div class="rcorners">
						&emsp;&emsp;
						<table style="height: 47px; width: 1000px;">
							<tbody>
								<tr>
									<td style="width: 270px;">
										<strong>Highest Qualifications&nbsp;:</strong></td>
									<td style="width: 265px;">
										<input name="ihq1" size="30" type="text" maxlength="20" value="${q.getHq1()}" /></td>
									<td style="width: 265px;">
										<input name="ihq2" size="30" type="text" maxlength="20" value="${q.getHq2()}" /></td>
									<td style="width: 265px;">
										<input name="ihq3" size="30" type="text" maxlength="20" value="${q.getHq3()}" /></td>
								</tr>
								<tr>
									<td style="width: 270px;">
										<strong>Institutions :</strong></td>
									<td style="width: 265px;">
										<input name="inst1i" size="30" type="text" maxlength="40" value="${q.getInst1()}" /></td>
									<td style="width: 265px;">
										<input name="inst2i" size="30" type="text" maxlength="40" value="${q.getInst2()}" /></td>
									<td style="width: 265px;">
										<input name="inst3i" size="30" type="text" maxlength="40" value="${q.getInst3()}" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<br/>
					<div style="font-size: 12px; color: red;">
						<em>&nbsp; &nbsp; *Maximum 60 characters are allowed for Awards &amp; Recognition</em></div>
					<div class="rcorners">
						&emsp;&emsp;
						<table style="height: 47px;">
							<tbody>
								<tr>
									<td style="width: 270px;">
										<strong>Awards &amp; Recognition&nbsp;:</strong></td>
									<td style="width: 290.667px;">
										<input name="iar1" size="22" type="text" maxlength="60" value="${skills.getAr1()}" /> - <input name="iay1" size="5" type="text" maxlength="4" value="${skills.getAy1()}" /></td>
									<td style="width: 279.333px;">
										<input name="iar2" size="22" type="text" maxlength="60" value="${skills.getAr2()}" /> - <input name="iay2" size="5" type="text" maxlength="4" value="${skills.getAy2()}" /></td>
									<td style="width: 274px;">
										<input name="iar3" size="22" type="text" maxlength="60" value="${skills.getAr3()}" /> - <input name="iay3" size="5" type="text" maxlength="4" value="${skills.getAy3()}" /></td>
								</tr>
								<tr>
									<td style="width: 220px;">
										&nbsp;</td>
									<td style="width: 290.667px;">
										<input name="iar4" size="22" type="text" maxlength="60" value="${skills.getAr4()}" /> - <input name="iay4" size="5" type="text" maxlength="4" value="${skills.getAy4()}" /></td>
									<td style="width: 279.333px;">
										<input name="iar5" size="22" type="text" maxlength="60" value="${skills.getAr5()}" /> - <input name="iay5" size="5" type="text" maxlength="4" value="${skills.getAy5()}" /></td>
									<td style="width: 274px;">
										<input name="iar6" size="22" type="text" maxlength="60" value="${skills.getAr6()}" /> - <input name="iay6" size="5" type="text" maxlength="4" value="${skills.getAy6()}" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div style="text-align: center;">
						<br />
						<br />
						&nbsp;<input class="w3-button w3-black w3-round-xxlarge" type="submit" value="Modify/Add" /></div>
				</form>
			</div>
			<div class="middlepane">
				&nbsp;</div>
			<div class="rightpane">
		  	<div class="divright"><a href="${pageContext.request.contextPath}/logout"><i class='fas fa-sign-out-alt' style='font-size:36px'></i>&nbsp;</a>&emsp;<br><a href="${pageContext.request.contextPath}/logout">Logout</a></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-user' style='font-size:55px'></i></div>
			<br/>
			<div style="text-align: center"><i class='fas fa-landmark' style='font-size:55px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-laptop-code' style='font-size:50px'></i>&nbsp;<i class='fas fa-tools' style='font-size:50px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-sitemap' style='font-size:60px'></i></div>
			<br/>
			<div style="text-align: center"><i class='fas fa-cogs' style='font-size:60px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-certificate' style='font-size:45px'></i>&nbsp;<i class='fas fa-medal' style='font-size:45px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-graduation-cap' style='font-size:80px'></i></div>
			<br/>
			<br/>
			<br/>
			<br/>
			<div style="text-align: center"><i class='fas fa-award' style='font-size:80px'></i></div>
		</div>
			<div class="footer"><p><i class='fas fa-copyright' style='font-size:14px;'></i><b>IBM INDIA Private Limited.</b></p></div>
		</div>
	</body>
</html>