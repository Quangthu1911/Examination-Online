<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Trắc nghiệm trực tuyến</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		function showQuestionLogout()
		{
			document.getElementById("question_delete").style.display="block";
			document.getElementById("request").innerHTML="Bạn có chắc muốn đăng xuất ?"
			flag=1;
		}
		function hideQuestionDelete()
		{
			document.getElementById("question_delete").style.display="none";
		}
		function hideQuestionDeleteAndChangePage()
		{
			document.getElementById("question_delete").style.display="none";
			location.href='index.html';
		}
	</script>
	<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"> 
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="index.html">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="Admin.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#" onclick="showQuestionLogout()"><span class="fa fa-sign-out"></span> Đăng xuất</a>
							<a href="index.jsp"><span class="fa fa-wpforms"></span> Trở về trang chủ</a>
						 </div>
					</div>
				</div>
			</nav>

		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>HỌC SINH</h3>
		<p>Chào mừng bạn đến với trang thư viện đề thi</p>
		
	</div>
	<!--//banner -->

	
	<!-- /inner_content -->
	<div class="inner_content_info_agileits" style="margin-top: 40px; margin-bottom: 40px;">
		<div class="container">
			<div class="tittle_head_w3ls">
				<h2 style="text-align: center; font-weight: bold;">Điểm thí sinh </h2>
			</div>
			<div class="inner_sec_grids_info_w3ls" style="position: relative;">
				  <table id="example">
					  <thead>
					    <tr><th class="site_name">Name</th><th>ID bài thi </th><th>Tên bài thi</th><th>Điểm</th></tr>
					  </thead>
					  <tbody>
					  </tbody>
				</table>
				<div style="position:absolute;left: 97%;"	>
					<a href="#"class="navbar-btn navbar-right btn_dangnhap">OK</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-3">
			<div id="question_delete">
				<div class="delete">
					<div id="request" style="font-size: 20px; color: #1E1D1D;"></div>
				    <div class="btn_yesno">
						<input type="Submit" name="" value="ĐỒNG Ý" onclick="hideQuestionDeleteAndChangePage()">
				    	<input type="Submit" name="" value="THOÁT" onclick="hideQuestionDelete()">	
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>

<!-- 	//Dữ liệu của bảng điểm thí sinh -->
 <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  <script>
  $(function(){
    $("#example").dataTable({ // Search va  Show entry được dataTable trong jquery ho tro
  "aaData":[
    ["Phan Hữu Hiếu","161101","Mạng máy tính","70"],
    ["Sói con lạc lối","161101","Mạng máy tính","70"],
    ["Play from far home","161101","Mạng máy tính","70"],
    ["Phan Thị Thư","161102","Mạng máy tính","20"],
    ["Nguyen Thị Thuận","161103","Mạng máy tính","50"],
    ["Tran Thị Nhung","161104","Mạng máy tính","60"],
    ["Hoang Minh","161105","Mạng máy tính","25"],
    ["Phan Hữu Hiếu","161101","Mạng máy tính","70"],
    ["Phan Hữu Hiếu","161101","Mạng máy tính","70"],
    ["Phan Hữu Hiếu","161101","Mạng máy tính","70"],
    ["Phan Hữu Hiếu","161101","Mạng máy tính","70"],
    ["Phan Hữu Hiếu","161101","Mạng máy tính","70"]


  ],
  "aoColumnDefs":[{
        "sTitle":"Tên thí sinh"
      , "aTargets": [ "site_name" ]
  }]
});
  })
  </script> <!-- dữ liệu của bảng điểm thí sinh -->
  <div class="footer">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.jsp">
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
</body>
<script>
  (function(s, u, b, i, z){
    u[i]=u[i]||function(){
      u[i].t=+new Date();
      (u[i].q=u[i].q||[]).push(arguments);
    };
    z=s.createElement('script');
    var zz=s.getElementsByTagName('script')[0];
    z.async=1; z.src=b; z.id='subiz-script';
    zz.parentNode.insertBefore(z,zz);
  })(document, window, 'https://widgetv4.subiz.com/static/js/app.js', 'subiz');
  subiz('setAccount', 'acqdvmvycfjcmnlaeaom');
</script>
<!-- End Subiz -->

</html>