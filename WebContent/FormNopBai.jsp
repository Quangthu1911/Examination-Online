<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Examination Online</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Soft Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		
	</script>

	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<!--<link href="//fonts.googleapis.com/css?family=Work+Sans:200,300,400,500,600,700" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>-->
	 <style type="text/css">
	 	.yyy
		{
			background: #1E1D1D;
			width: 600px;
			margin-left: 370px;
			margin-bottom: 60px;
			margin-top: 60px;
			border: #fff solid 2px;
			border-radius: 30px;
		}
		.yyy p
		{
			color: #fff;
			text-align: center;
			font-size: 30px;
			margin-top: 20px;
		}
		.yyy input[type="submit"]
		{
			background: #FFB900;
			color: #fff;
			width: 100px;
			height: 30px;
			margin-left: 450px;
			
		}
		.yyy input[type="submit"]:hover
		{
			background: #23B684;
		}
	 </style>
</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="index.html">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examinatuon online</label></h1>
						</a>
					</div>
					<!--/.navbar-header-->

					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="#"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="#"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
							<a href="#"><span class="fa fa-wpforms"></span> Trở về trang chủ</a>
						 </div>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>MẠNG MÁY TÍNH</h3>
		<p>Thời gian làm bài: 10 phút</p>

	</div>
	<!--//banner -->

	<!--form nộp bài khi kết thúc-->
	<div id="xxx">
		<div class="yyy">
			<p>BÀI THI CỦA BẠN ĐÃ HOÀN THÀNH</p>
			<p>ĐIỂM SỐ CỦA BẠN LÀ: ${diem }</p>
			<div id="point" style="color: #fff; font-size: 30px; text-align: center;" ></div>
			<a href="reviewExamStudent" style="font-size: 20px; margin-left:220px; color: #fff; border:black solid 2px; background: #FFB900;">XEM BÀI</a>
			<a href="Student.jsp" style="font-size: 20px; color: #fff; border:black solid 2px; background: #FFB900;">THOÁT</a>
		</div>
	</div>
	
	
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.html">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination online</label></h2>
						</a>
						<p>© 2017 Soft. All rights reserved | Design by <a href="http://w3layouts.com">Group 11</a></p>
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

	<!--<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

	<script type="text/javascript" src="js/bootstrap.js"></script>
	<h1>${loi }</h1>
	${requestScope.thongbao1}
</body>

</html>