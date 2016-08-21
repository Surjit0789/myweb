<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Surjit Singh</title>
<script>

function clear1()
{
	document.form1.comment.value="";
	
	}

</script>
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
}

#navigationBar {
	width: 965px;
	margin: auto;
}

#navHolder {
	clear: both;
	background-color: #123552;
	height: 45px;
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
	width: 100%;
	height: 280px;
	background-color: #718Da5;
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
	max-width: 240px;
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
}

#signature {
	width: 50%;
	float: right;
}

#socialSites {
	width: 50%;
	text-align: center;
}

table {
	
	margin-top: 52px;
}

fieldset {
	width: 50%;
	border-width: 0px;
	margin: auto;
	background: linear-gradient(180deg, #123552, #FFFFFF);
}

legend {
	background-color: #123552;
	border: 1px solid #123552;
	border-radius: 5px;
	margin-top: 2px;
	color: white;
}
</style>



</head>
<body>
	<div id="container">
		<div id="navHolder">
			<div id="navigationBar">
				<ul>
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="projects.jsp">Projects</a></li>
					<li><a class="active" href="contact.jsp">Contact</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<form name="form1" text-size="20px">
				<fieldset >
					
					<table height="330px" width="100%">
						<tr>
							<td id="access" text-align="right">Name:</td>
							<td><input type="text" name="cname"
								placeholder="Enter your full name" required /></td>
						</tr>



						<tr>
							<td id="access">Email:</td>
							<td><input type="email" name="cemail"
								placeholder="Enter your email" required /></td>
						</tr>

						<tr>
							<td>Please comment here:</td>
							<td><textarea name="comment" onfocus="clear1()">Enter your comment here...</textarea>
							</td>
						</tr>




						<tr>
							<td align="center"><input type="submit" value="Sign-Up" /></td>
							<td align="center"><input type="reset" value="Reset Form" /></td>
						</tr>


					</table>

				</fieldset>



			</form>
			<form>
				<fieldset>
					<table>
						<tr>
							<td>Surjit Singh</td>
						</tr>
						<tr>
							<td>Computer Programmer</td>
						</tr>
						<tr>
							<td>lubana.surjitsingh68@gmail.com</td>
						</tr>
						<tr>
							<td>647-609-4384</td>
						</tr>
					</table>
				</fieldset>
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