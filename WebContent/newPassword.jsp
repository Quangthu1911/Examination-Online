<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
	<title>Examination Online</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		function cmtStudent()
		{
			document.getElementById("textarea").value="";
		}
	</script>

	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<style type="text/css">
		#forget
		{
			z-index: 30;
			background: #1D1E1E;
			color:#fff;
			top: 50%;
			left: 50%;
			border-radius: 5px;
			position: fixed;
			transform: translate(-50%,-50%);
			box-sizing: border-box;
			padding: 70px 30px;
			border: #FBB900 solid 2px;
			
		}
		.avatar{
			width: 100px;
			height: 100px;
			border-radius: 50%;
			position: fixed;
			top: -50px;
			left: calc(50% - 50px);

		}
		#forget h1{
			margin: 0;
			padding:0 0 20px;
			text-align: center;
			font-size: 22px;
		}
		#forget p
		{
			font-size: 15px;
		}
		#forget input
		{
			margin-bottom: 10px;
		}
		#forget input[type="text"],input[type="password"]
		{
			border: none;
			border-bottom: 2px solid #fff;
			background: transparent;
			outline: none;
			height: 40px;
			color: #fff;
			font-size: 16px;
		}
		#forget input[type="Submit"]
		{
			border: none;
			outline: none;
			height: 50px;
			background: #FFB900;
			color: #fff;
			font-size: 18px;
			margin-top:15px;
			border-radius: 20px;
		}	
		#forget input[type="Submit"]:hover
		{
			cursor: pointer;
			background: #FFB900;
			color: #000;
		}
	</style>
</head>

<body>
	<!-- header -->
	<div class="header" id="home" >
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container" id="huhu">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.html" style="margin-top: 10px; margin-left: -70px;">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination online</label></h1>
						</a>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">-
								<li class="active"><a href="index.html" class="effect-3">TRANG CHỦ</a></li>
								<li class="dropdown-toggle"><a href="#" onclick="showLogin()" class="effect-3">ĐĂNG NHẬP</a></li>
								<li class="dropdown-toggle"><a href="#" onclick="showRegister()" class="effect-3">ĐĂNG KÝ</a></li>
								<li class="dropdown-toggle"><a href="#" onclick="showContact()" class="effect-3">LIÊN HỆ</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<div style="width: 100%; height: 500px;">
		<p></p>
	</div>

	<div id="forget">
			<img src="images/login2.png" class="avatar">
			<h1>QUÊN MẬT KHẨU</h1>
			<form  action="NewPasswordForward" method="post">
				<div class="row" >
					<div class="col-md-4"><p>Mật khẩu mới:</p></div>
					<div class="col-md-8"><input type="password" name="newpass" placeholder="Nhập Mật Khẩu mới:" id="passNew"></div>
				</div>
				<div class="row">
					<div class="col-md-4"><p>Nhập lại mật khẩu:</p></div>
					<div class="col-md-8"><input type="password" name="renewpass" placeholder="Nhập lại Mật Khẩu mới:" id="rePassNew"></div>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-8" style="margin-left: 350px;">
						<input type="Submit" name="" value="Hoàn tất" >
					</div>
				</div>
			</form>
    </div>
	<!-- footer -->
	
	<div class="footer">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.html">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h2>
						</a>
						<p>© 2017 Soft. All rights reserved | Design by <a href="#">Group 11</a></p>
					</div>
				</div>
				<div class="col-md-3 footer_bottom_grid">
					<h6>Follow Us</h6>
					<div class="social">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>

		</div>
	</div>
	<!-- //footer -->

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	
</body>