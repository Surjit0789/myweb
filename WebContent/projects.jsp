<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Surjit Singh</title>
<script src="_js/jquery.js"></script>
<script type="text/javascript" src="css-pop.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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

#javaProjects {
	margin-bottom: 30px;
	 
	 
}

.desc{
text-align: justify;
text-align : left;
color :  black;
letter-spacing: 0.2px;

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
	overflow: hidden;
	margin: auto;
	background: linear-gradient(360deg, #496c89, #FFFFFF);
}

#about {
	width: 30%;
	height: 223px;
	float: right;
	margin-right: 15%;
	margin-top: 4%;
	line-height: 2;
}

#mypic {
	width: 50%;
	height: auto;
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

div.img {
	margin: 5px;
	border: 1px solid #ccc;
	float: left;
	width: 300px;
	height: 346px;
}

div.img:hover {
	border: 1px solid #777;
}

div.img img {
	width: 100%;
}

div.desc {
	
}

h1 {
	margin: 0px;
	padding: 0px;
}

#javaProjects {
	overflow: hidden;
}

#webapp {
	overflow: hidden;
}

#blanket {
	background-color: #111;
	opacity: 0.65;
	*background: none;
	position: absolute;
	z-index: 9001;
	top: 0px;
	left: 0px;
	width: 100%;
}

#popUpDiv {
	position: absolute;
	background: url(pop-back.jpg) no-repeat;
	width: 400px;
	border: 5px solid #000;
	z-index: 9002;
}
</style>

<script>
	window.addEventListener("load", myfunt);
	var imgNum = 1;
	var preViousFolder="";
	function myfunt() {
		console.log("hi");
		gallery();


	}
	
	function openPop(name){
		var folder;
		console.log("PreViosFOlder"+preViousFolder);
		if(name.indexOf(preViousFolder) !== -1){
			folder = name.substring(0,(name.length)-1);
			preViousFolder = folder;
			console.log("new Folder"+folder);
		}
		
		
		console.log(folder);
		
		$("#popImg").attr("src", folder + "/" + imgNum + ".JPG");
			
	}
	
	
	

	function gallery() {

		$("#javaProjects").append("<h1>Java Applications</h1>");
		// Ajax call define request type, file locaiton(url), data type either xml or json or text
		// have functions one for success another for fail
		$
				.ajax({
					type : "GET",
					url : "myProjects.xml",
					dataType : "XML",
					success : function(xml) {
						// will run when xml file detected 
						var gallery_ImageID = 1;
						var game;
						$(xml)
								.find("project")
								.each(
										function() {
											game = $(this).attr("name");
											
											// look for project tag into xml file and fetech spcific data for each tag
											var desc = $(this).find(
													"description").text();

											var img;
											$(this).find("images").each(
													function() {
														img = $(this).find(
																"img[name]")
																.text();

													});
											console.log(img);
											$("#javaProjects")
													.append(
															"<div class='img'>"
																	+ "<a href='#' onClick=popup('popUpDiv')   id='"+game+""+(gallery_ImageID)+"'> <img "+
						"src='"+img+"' alt='Fjords' width='300' height='200'> </a>"
																	+ "<div class='desc'>"
																	+ desc+"</div></div>");
											
											
											$("#"+game+""+gallery_ImageID).click(function() {
												var gameName = $(this).attr("id");
												
												openPop(gameName);

											});
											
											gallery_ImageID++;
											
										});

						

					},
					error : function() {
						console.log("Error");
					}

				})

	}

	function previous() {
		var x = $("#popImg").attr("src");
		if(x.indexOf(preViousFolder) !== -1){
			folder = x.substring(0,(x.length)-6);
			preViousFolder = folder;
			console.log("new Folder"+folder);
		}
		$("#popImg").attr("src", folder + "/" + imgNum + ".JPG");
		if (imgNum > 1) {
			$("#popImg").attr("src", folder + "/" + (imgNum - 1) + ".JPG");
			imgNum--;
		} else {
			imgNum = 1;
		}

	}
	function next() {
		var x = $("#popImg").attr("src");
		if(x.indexOf(preViousFolder) !== -1){
			folder = x.substring(0,(x.length)-6);
			preViousFolder = folder;
			console.log("new Folder"+folder);
		}
		$.get(folder + "/" + (imgNum + 1) + ".JPG")
	    .done(function() { 
	    	if (imgNum < 5) {
				$("#popImg").attr("src", folder + "/" + (imgNum + 1) + ".JPG");
				imgNum++;
			} else {
				imgNum = 5;
			}
	        

	    }).fail(function() { 
	        imgNum = 1;

	    })
		

	}
</script>



</head>
<body>
	<div id="container">
		<div id="navHolder">
			<div id="navigationBar">
				<ul>
					<li><a href="Home.jsp">Home</a></li>
					<li><a class="active" href="projects.jsp">Projects</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<div id="javaProjects"></div>

		</div>

		<div id="blanket" style="display: none"></div>
		<div id="popUpDiv" style="display: none; overflow: hidden;">
			<img src="2.png" width="10%" height="10%"
				style="float: left; backgroud: white;" onclick="previous()"></img> <img
				src="1.png" width="10%" height="10%" style="float: right;"
				onclick="next()"></img> <img id="popImg" src="" alt="Fjords"
				width="100%" height="100%">
		</div>
		<a href="#" onclick="popup('popUpDiv')"></a>



	</div>

	<footer>
	<div id="footer">
		<div id="signature">Socail Sites</div>
		<div id="socialSites">Surjit Singh &nbsp; | &nbsp;
			Copyright&copy; 2016</div>
	</div>

	</footer>






</body>
</html>