<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE HTML>
<!--
	Course Management System by HTML5 UP
	Free for personal and commercial use under the CCA 3.0 license 
-->
<html>
	<head>
		<title>Course Management</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="/assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="/assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				<tiles:insertAttribute name="header" />
				
				<!-- Main -->
				<tiles:insertAttribute name="body" />

				<!-- Footer -->
				<tiles:insertAttribute name="footer" />
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>