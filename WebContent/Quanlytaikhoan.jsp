<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>QUẢN LÝ TÀI KHOẢN</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/font-awesome.css" rel="stylesheet">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
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
                            <button class="dropbtn">ADMIN</button>
                            <span class="fa fa-sort-desc" style="color: #fff;"></span>
                            <div class="dropdown-content">
                                <a href="Admin.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
                                <a href="QLThongBao.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
                                <a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
                             </div>
                        </div>
                    </div>
                </nav>
            </div>
    </div>
        <!-- banner -->
        <div class="inner_page_agile">
            <h3>ADMIN</h3>
            <p>Chào mừng bạn đến với trang thư viện đề thi</p>		
        </div>
<!-- /inner_content -->
<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li><a href="XemThongTinCaNhan.jsp">THÔNG TIN</a></li>
				 			<li><a href="Quanlytaikhoan.jsp">QUẢN LÝ TÀI KHOẢN</a></li>
				 			<li><a href="#">QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="QLThongBao.jsp">THÔNG BÁO</a></li>
                            <li><a href="CapQuyen.jsp">PHÂN QUYỀN</a></li>
				 	</ul>
				</div>
            </div>
<div class="col-md-9 job_info_right">
        <div class="inf_exam">
                <h3 style="text-align:center;color: white; margin-top:20px" >QUẢN LÝ TÀI KHOẢN </h3>
                <div class="col-sm-4 tk admin">
                        <a href="TkAdmin.jsp"><img src="images/tk admin.jpg" style="width:240px;height: 180px" alt=""></a>
                        <p style="text-align:center">Tài Khoản ADMIN</p>
                </div>
                <div class="col-sm-4 tk admin">
                            <a href="TkGV.jsp"><img src="images/tk gv.jpg" style="width:240px;height: 180px" alt=""></a>
                            <p style="text-align:center">Tài Khoản Giáo Viên</p>
                </div>
                <div class="col-sm-4 tk admin">
                                <a href="TkTS.jsp"><img src="images/tk hs.png" style="width:240px;height: 180px" alt=""></a>
                                <p style="text-align:center">Tài Khoản Học Sinh</p>
                </div>
                           
        </div>        
 </div>
 </div>
 </div>       
 <!-- footer -->
	
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
	<!-- //footer -->

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
 
</body>
</html>