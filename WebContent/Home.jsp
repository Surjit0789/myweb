<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Surjit Singh</title>
<style type="text/css">
#banner {
	background-color: yellow;
	height: 180px;
	width: 100%;
	background-image: url("banner.jpg");
	background-position: center;
	text-align: center;
	Color: Black;
	font-size: 20px;
	vertical-align: middle;
	line-height: 180px;
}

body {
	height: 100%;
	margin: 0px;
	padding: 0px;
	font-family: Arial;
	background-color: #718Da5;
	background: linear-gradient(180deg, #123552, #FFFFFF);
}

#navigationBar {
	width: 965px;
	margin: auto;
}

#navHolder {
	clear: both;
	background-color: #123552;
	height: 45px;
	background: linear-gradient(260deg, #123552, #FFFFFF);
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
	
}

li a {
	display: block;
	color: White;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

.active {
	background-color: #496c89;
}

#content {
	background-color: #496c89;
	width: 965px;
	height: 550px;
	margin: auto;
	background: linear-gradient(360deg, #496c89, #FFFFFF);
	margin-top: -16px;
}

#about {
	width: 30%;
	height: 223px;
	float: right;
	margin-right: 15%;
	margin-top: 4%;
	line-height: 2;
}

h2 {
	border-bottom: 2px solid black;
	color: black;
}

#mypic {
	width: 50%;
	height: auto;
}

img {
	margin: 18%;
}

#bfooter {
	width: 965px;
	margin : auto;
	height: 280px;
	background-color:  #718Da5;
	background: linear-gradient(180deg, #718Da5, #FFFFFF);
}

#education {
	width: 50%;
	color: black;
	float: right;
	height: 192px;;
}

#projects {
	width: 50%;
}

#project {
	width: 280px;
	float: right;
	margin-right: 180px;
}

#edu {
	max-width: 280px;
	margin-left: 44px;
}

#footer {
	line-height: 45px;
	clear: both;
	width: 100%;
	height: 50px;
	color: white;
	width: 100%;
	height: 50px;
	color: white;
	background-color: #123552;
		background: linear-gradient(120deg, #123552, #FFFFFF);
}

#signature {
	width: 50%;
	float: right;
}

#socialSites {
	width: 50%;
	text-align: center;
}
</style>



</head>
<body>
	<div id="container">
		<div id="navHolder">
			<div id="navigationBar">
				<ul>
					<li><a class="active" href="#home">Home</a></li>
					<li><a href="projects.jsp">Projects</a></li>
					<li><a href="#about">Contact</a></li>
				</ul>
			</div>
		</div>
		<div id="content">

			<div id="about">
				<p id="aboutme">
				<h2>About me</h2>
				I am a highly driven individual with strong academics, disciplined
				work ethics and solid knowledge of various programming in various
				domains. I possess a unique talent to understand complex tasks
				quickly and the ability to develop effective solutions. <br> <br>
				<button>Download full CV</button>
				<p>
			</div>
			<div id="mypic">
				<p>

					<img src="surjitSingh.jpg" height="240px" width="75%"
						align="middle" alt="Surjit Singh">
				</p>
			</div>




		</div>

		<div id="bfooter">
			<div id="education">
				<div id="edu">
					<h2>Education</h2>
					<p>
						2015-2016<br> Sheridan College, Canada
					<hr>
					<br> 2014-2015<br> Golden Senior Secondary School,India
					</p>
				</div>
			</div>
			<div id="projects">
				<div id="project">
					<h2>Projects</h2>
					<p style="margin: 0px;">Java
					<hr width="8%" align="left">
					<ol style="margin: 0px;">
						<li>Desktop Applications</li>
						<br>
						<li>Web Application</li>
					</ol>
					<br> <br> Web
					<hr width="8%" align="left">

					<ol style="margin: 0px;">
						<li>Mobile Web Applications</li>
						<br>
						<li>Desktop Web Application</li>
					</ol>

					</p>

				</div>

			</div>
	<form action="Home" method="post">
		<input type="text" name="name">
		<input type="submit" value="send">
	
	</form>

		</div>

		<footer>
		<div id="footer">
			<div id="signature">Socail Sites</div>
			<div id="socialSites">Surjit Singh &nbsp; | &nbsp;
				Copyright&copy; 2016</div>
		</div>

		</footer>

	</div>




</body>
</html>