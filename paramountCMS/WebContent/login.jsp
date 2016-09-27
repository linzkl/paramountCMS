<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Phantom by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="<c:url value="/assets/js/ie/html5shiv.js"/>"></script><![endif]-->
		<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
		<!--[if lte IE 9]><link rel="stylesheet" href="<c:url value="/assets/css/ie9.css"/>" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="<c:url value="/assets/css/ie8.css"/>" /><![endif]-->
	</head>
	
	<body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="container 125%">

						<!-- Logo -->
							<a href="#" class="logo">
								<span class="symbol"><img src="<c:url value="/assets/images/logo.png"/>" alt="" /></span><span class="title">Course Management System</span>
							</a>


					</header>


				<!-- Main -->
					<div id="main">
						<div class="inner">
							<div class="row 125%">
								<div class="2u 12u(small)">
									<section class="tiles">
										<form action="login" method="post">
											<label for="username"> Username: </label>
											<input type="text" name="username" id="username"/>
											<label for="password">Password: </label>
											<input type="password" name="password" id="password"/>
											<br />
											<input type="submit" value="Login" />
										</form>
									</section>
								</div>
							</div>
						</div>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<!-- <h2>Follow</h2>
								<ul class="icons">
									<li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
								</ul> -->
							</section>
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="<c:url value="/assets/js/jquery.min.js"/>"></script>
			<script src="<c:url value="/assets/js/skel.min.js"/>"></script>
			<script src="<c:url value="/assets/js/util.js"/>"></script>
			<!--[if lte IE 8]><script src="<c:url value="/assets/js/ie/respond.min.js"/>"></script><![endif]-->
			<script src="<c:url value="/assets/js/main.js"/>"></script>

	</body>
</html>