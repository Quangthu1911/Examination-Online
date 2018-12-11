<%@page import="controller.BXHForward"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <%@page import="BEAN.Exam"%>
        <%@page import="BEAN.BXH"%>
<%@page import="DAO.ExamDAO"%>
<%@page import="controller.BXHForward"%>
<!DOCTYPE html>
<html>

<head>
	<title>Examination Online</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		function showLogin()
		{
			document.getElementById("loginForm").style.display="block";
			document.getElementById("name_login").value="";

		}
		function hideLogin()
		{
			document.getElementById("loginForm").style.display="none";
			
		}
		function mulLogin()
		{
			document.getElementById("loginForm").style.display="none";
			document.getElementById("registerForm").style.display="block";
		}
		function showRegister()
		{
			document.getElementById("registerForm").style.display="block";

		}
		function hideRegister()
		{
			document.getElementById("registerForm").style.display="none";
			
		}
		function hideContact()
		{  
			document.getElementById("contactForm").style.display="none";
		}
		function showContact()
		{
			document.getElementById("contactForm").style.display="block";
		}
		function mulRegister()
		{
			document.getElementById("loginForm").style.display="block";
			document.getElementById("registerForm").style.display="none";
		}
		/*Kiểm tra quyền truy cập của tài khoản đó*/
		function check()
		{
			var s = document.getElementById("name_login").value;
			var s1 = document.getElementById("pass_login").value;
			let radThiSinh = $("#lg_ts").is(":checked");
			let radGiaoVien = $("#lg_gv").is(":checked");
			let radAdmin = $("#lg_ad").is(":checked");
			
			if(s==="")
			{
				alert("Bạn chưa nhập tên đăng nhập !!!");
				return false;
			}

			if(s1==="")
			{
				alert("Bạn chưa nhập mật khẩu !!!");
				return false;
			}
			if(radThiSinh==false&&radGiaoVien==false&&radAdmin==false)
		    {
				alert("Bạn chưa chọn quyền khi đăng nhập !!!");
				return false;
		    }
			else
			{
					if(radThiSinh === true)
					{
						location.href='Student.jsp';
					}
					
					if(radGiaoVien==true)
					{
						location.href='GV.jsp';
					}
					
					if(radAdmin==true)
					{
						location.href='Admin.jsp';
					}
					return false;
			}
		}
		/*Xử lý quên mật khẩu*/
		function showFormSendCode()
		{
			document.getElementById("forget_password1").style.display="block";
			document.getElementById("loginForm").style.display="none";
		}
		function checkForgetPassword()
		{
			var s = document.getElementById("passNew").value;
			var s1=document.getElementById("rePassNew").value;
			var s2=document.getElementById("id_code").value;
			if(s===s1&&s2!=""&&s!=""&&s1!="")
			{
				alert("Bạn đổi mật khẩu thành công !");
				document.getElementById("forget_password").style.display="none";
				return true;
			}	
			if(s1==="")
			{
				alert("Bạn chưa nhập mật khẩu !!!");
			}
			else if(s2==="")
			{
				alert("Bạn chưa nhập mã code !!!");
			}
			else
			{
				alert("Bạn nhập lại mật khẩu sai !");
			}
			return false;
		}
		function check_email()
		{
			var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
				var email = $("#Email_code").val();
				if(email !== '' && pattern.test(email)) 
				{
					document.getElementById("email_error").innerHTML="";
				} 
				else 
				{
					alert("Bạn nhập không đúng định dạng email");
					//document.getElementById("email_error").innerHTML="Không đúng định dạng email";
				}
				return false;
		}
		function BXHTS() {
			$.get("/ExaminationOnline/BXHForward?", content => $("col_3 permit").html(content));
		}
	</script>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
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
	
	
	<!-- banner -->
    <div class="row trinhchieu" style="margin-top: -20px;">
    	<!--<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10 col-md-push-1">-->
    		<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
			    	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			    	<li data-target="#myCarousel" data-slide-to="1"></li>
			    	<li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>
			  	<div class="carousel-inner">
				    <div class="item active">
				      <img src="images/banner1.jpg" alt="Los Angeles">
				    </div>

				    <div class="item">
				      <img src="images/banner2.jpg" alt="Chicago">
				    </div>

				    <div class="item">
				      <img src="images/banner4.jpg" alt="New York">
				    </div>
				</div>
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left"></span>
				    <span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right"></span>
				    <span class="sr-only">Next</span>
				</a>
			</div>
    	<!--</div>-->
    </div>
	<!--//banner -->

	<!--Login-->
	<div id="loginForm">
		<div class="loginbox">
		<img src="images/login2.png" class="avatar" onclick="hideLogin()">
			<h1>ĐĂNG NHẬP</h1>
			<form class="signin" action="LoginForward" method="post">
				<span class="login-type">
					<span style="padding-left: 10px;"><input type="radio" name="rd" value="TS" id="lg_ts"> TS</span>
					<span><input type="radio" name="rd" id="lg_gv" value="GV"> GV</span>
					<span><input type="radio" name="rd" id="lg_ad" value="AD"> Admin</span>
				</span>
				<input type="text" id="name_login" name="nameLogin" placeholder="Tên Đăng Nhập:" class="control" required autofocus>
				<input type="password" id="pass_login" name="passLogin" placeholder="Nhập Mật Khẩu:" class="control">
				<p style="float: right; margin-bottom: 20px;"><a href="#" onclick="showFormSendCode()">Quên mật khẩu</a></p>
				<input type="Submit" name="" value="Đăng nhập" style="width: 100%;">
				<p>Nếu bạn chưa có tài khoản, nhấn <a href="#" onclick="mulLogin()">vào đây</a></p>
			</form>
       </div>
	</div>

	<!--Contact-->
	<div id="contactForm">
		<div class="contactbox">
			<img src="images/close.png" onclick="hideContact()">
			<h1 class="glow">LIÊN HỆ VỚI CHÚNG TÔI</h1>
			<div class="social">
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-rss"></i></a></li>
				</ul>
			</div>
			<div class="inf_contact">
				<i>Phan Thị Quang Thư (16110480) : quangthu1911@gmail.com, 0967539819</i><br>
				<i>Phan Hữu Hiếu (1611...) : </i><br>
				<i>Nguyễn Bá Thuận (1611...) : </i><br>
			</div>
		</div>
	</div>

    <!--register form-->
    <div id="registerForm">
		<div class="registerbox">
			<img src="images/login2.png" class="avatar" onclick="hideRegister()">
			<h1>ĐĂNG KÝ</h1>
			<form action="RegisterForward" method="post">
				<span class="login-type">
					<span style="padding-left: 40%; margin-right: 20px;"><input type="radio" name="rdlg_ts" id="lg_ts"> TS</span>
					<span ><input type="radio" name="rdlg_gv" id="lg_gv"> GV</span>
				</span>
				<div class="row">
					<div class="col-6 col-md-2">Tên đăng nhập:</div>
					<div class="col-6 col-md-4"><input type="text" name="UserLogin" placeholder="Nhập tên đăng nhập:" class="form_text" id="form_name" required=""></div>
					<div class="col-6 col-md-2">CMND:</div>
					<div class="col-6 col-md-4"><input type="text" name="Certi" placeholder="Nhập số cmnd:" class="form_text" id="form_cmnd" required=""></div>
				</div>
				<div class="row">
					<div class="col-6 col-md-2"><p> </p></div>
					<div class="col-6 col-md-4"><span class="error_form" id="username_error_message"></span></div>
					<div class="col-6 col-md-2"><p> </p></div>
					<div class="col-6 col-md-4"><span class="error_form" id="cmnd_error_message"></span></div>
				</div>
				<div class="row">
					<div class="col-6 col-md-2">SĐT:</div>
					<div class="col-6 col-md-4"><input type="text" name="Num" placeholder="Nhập số điện thoại:" class="form_text" id="form_num" required=""></div>
					<div class="col-6 col-md-2">Nơi công tác:</div>
					<div class="col-6 col-md-4"><input type="text" name="Address" placeholder="Nhập nơi công tác:" class="form_text" id="form_work" required=""></div>
				</div>
				<div class="row">
					<div class="col-6 col-md-2"><p> </p></div>
					<div class="col-6 col-md-4"><span class="error_form" id="num_error_message"></span></div>
					<div class="col-6 col-md-2"><p> </p></div>
					<div class="col-6 col-md-4"><span class="error_form" id="work_error_message"></span></div>
				</div>
				<div class="row">
					<div class="col-6 col-md-2">Email:</div>
					<div class="col-6 col-md-4"><input type="text" name="Email" placeholder="Nhập Email:" class="form_text" 
						id="form_email" required=""></div>
					<div class="col-6 col-md-2">Mật khẩu:</div>
					<div class="col-6 col-md-4"><input type="password" name="Password" placeholder="Nhập mật khẩu:" class="form_text" 
						id="form_pass" required=""></div>
				</div>
				<div class="row">
					<div class="col-6 col-md-2"><p> </p></div>
					<div class="col-6 col-md-4"><span class="error_form" id="email_error_message"></span></div>
					<div class="col-6 col-md-2"><p> </p></div>
					<div class="col-6 col-md-4"><span class="error_form" id="pass_error_message"></span></div>
				</div>
				<div class="row">
					<div class="col-6 col-md-2">Nhập lại:</div>
					<div class="col-6 col-md-4"><input type="password" name="" placeholder="Nhập lại Mật Khẩu:" class="form_text" 
						id="form_re_pass" required=""></div>
					<div class="col-6 col-md-2">Họ và tên:</div>
					<div class="col-6 col-md-4"><input type="text" name="UserName" placeholder="Nhập họ và tên:" class="form_text" 
						id="form_HVT" required=""></div>
				</div>
				<div class="row">
					<div class="col-6 col-md-2"><p> </p></div>
					<div class="col-6 col-md-4"><span class="error_form" id="re_pass_error_message"></span></div>
				</div>
				<div><input type="Submit" name="" value="Đăng ký" class="sbmit_btn" onclick="return ckeckSubmit();" required=""></div>
				<h4>Nếu bạn đã có tài khoản, nhấn <a href="#" onclick="mulRegister()">vào đây</a></h4>
			</form>
       </div>
	</div>

	<!--form quen mat khau-->
	<div id="forget_password1">
		<img src="images/login2.png" class="avatar">
		<h1>QUÊN MẬT KHẨU</h1>
		<form action="ForgetPassword" method="post">
		    <input type="text" name="loginUser" placeholder="Nhập tên đăng nhập:" id="NameLogin_code">
			<input type="text" name="EmailLogin" placeholder="Nhập email đăng kí:" id="Email_code">
			<div id="email_error"></div>
			<input type="Submit" name="" value="Gửi code" class="sbmit_btn" onclick="return check_email();" style="float:right; background:#FFB900; font-size:20px;" required="">
		</form>
    </div>
    <!--form lấy lại mật khẩu-->


	<!-- /inner_content -->
	<div class="inner_content">
		<div class="container">
			<div class="content_inf">
				<!--three image-->
				<div class="row" style="margin-bottom: 100px; margin-top: 100px; color: black;">
					<div class="column">
					    <div class="card" style="background:#E1E1E1;">
					    	<img src="images/dethi.jpg" alt="Jane" style="width:100%; height: 155px;">
					        <div class="inf" >
					        	<h2>Đề thi</h2>
					        	<p class="title1">Các tính năng nổi bật</p>
					        	<p>Tạo đề thi trực tiếp hoặc up file word</p>
					        	<p>Cấu hình thang điểm, thời gian làm bài</p>
					        	<p>Đa dạng các loại câu trả lời khi tạo đề</p>
					      	</div>
					    </div>
					</div>

					<div class="column">
					    <div class="card" style="background:#E1E1E1;">
					    	<img src="images/phanquyen.jpg" alt="Mike" style="width:100%; height: 155px;">
					      	<div class="inf">
					        	<h2>Phân quyền</h2>
					        	<p class="title1">Các tính năng nổi bật</p>
					        	<p>Phân quyền quản lý thư viện đề thi</p>
					        	<p>Phân quyền thành viên tham gia làm bài</p>
					        	<p>Phân quyền thêm thí sinh vào đề thi</p>
					        </div>
					    </div>
					</div>

					<div class="column">
					    <div class="card" style="background:#E1E1E1">
					    	<img src="images/lambai.png" alt="John" style="width:100%; height: 155px;">
					      	<div class="inf">
					        	<h2>Làm bài thi</h2>
					        	<p class="title1">Các tính năng nổi bật</p>
					        	<p>Bộ đếm ngược thời gian</p>
					        	<p>tự động thu bài khi hết giờ</p>
					        	<p>Xem lại bài làm sau khi nộp bài</p>
					      	</div>
					    </div>
					</div>
					  
				</div>
				<!--//three image-->
				<!--content_web-->
				<div class="col-md-8">
					<div class="info_left">
						<img src="images/banner3.jpg" alt=" " class="img-responsive" />
						<h3>Xu hướng trắc nghiệm khách quan</h3>
						<span class="fa fa-signal" aria-hidden="true"></span> <i> Quản lý được số lượng thí sinh lớn</i><br>
						<span class="fa fa-signal" aria-hidden="true"></span> <i> Kết quả nhanh</i><br>
						<span class="fa fa-signal" aria-hidden="true"></span> <i> Công bằng, chính xác vô tư</i><br>
						<span class="fa fa-signal" aria-hidden="true"></span> <i> Tránh tình trạng học tủ</i><br>
						<span class="fa fa-signal" aria-hidden="true"></span> <i> Tránh tình trạng gian lận trong bài thi</i><br>
					</div>
					<div class="admin">
						<p><i class="fa fa-quote-left" aria-hidden="true"></i> Hình thức thi trắc nghiệm online, dạy học số đang được phổ biến rộng rãi. Với sự hiện đại và tiện lợi của hệ thống thi trắc nghiệm online các kì thi được: diễn ra nhanh hơn, đỡ tốn các chi phí phát sinh, tránh được gian lận trong thi cử, học sinh sẽ chăm chỉ hơn,...Trắc nghiệm online THT có các tính năng như: chấm điểm tự động, xem lại các bài thi, tạo bằng file word hay excel hay tạo trực tuyến trên trang web và nhiều tính năng hấp dẫn khác.
						</p>
						<a href="#"><span>John Frank</span></a>
					</div>
				</div>
				<div class="col-md-4 info_right">
					<div class="widget_search">
						<h5 class="widget-title">Tìm kiếm BXH</h5>
						<div class="widget-content">
							<span>Môn thi tìm ...</span>
							<form action="BXHForward" method="post">
								<select class="form-control jb_1" name="SelectSub">
								<option value="0">chọn môn</option>
								<% 	for(Exam c:ExamDAO.DisplayExamStudentBXH())
								{%>
								<option value="<%=c.getExamName()%>"><%=c.getExamName()%></option>
								<%} %>
								</select>
								<span>Tên giáo viên</span>
								<select class="form-control jb_1" name="selectNameTeacher">
									<option value="0">Giáo viên</option>
									<% 	for(Exam c:ExamDAO.DisplayExamStudentBXH())
									{%>
									<option value="<%=c.getUserLogin()%>"><%=c.getUserLogin()%></option>
									<%} %>
								</select>
								<input type="submit" value="Tìm Kiếm" style="font-weight:bold; color:#FFB900;">
							</form>
						</div>
					</div>
					<div class="col_3 permit">
						<h3>BẢNG XẾP HẠNG</h3>
						<div class="list-group">
							<a href="#" class="list-group-item active">${bxh0 }<p style="float:right;">${diem0 }</p></a>
							<a href="#" class="list-group-item active">${bxh1 }<p style="float:right;">${diem1 }</p></a>
							<a href="#" class="list-group-item active">${bxh2 }<p style="float:right;">${diem2 }</p></a>
							<a href="#" class="list-group-item active">${bxh3 }<p style="float:right;">${diem3 }</p></a>
							<a href="#" class="list-group-item active">${bxh4 }<p style="float:right;">${diem4 }</p></a>
							<a href="#" class="list-group-item active">${bxh5 }<p style="float:right;">${diem5 }</p></a>
					   </div>
					</div>
				</div>
				<div class="clearfix"></div>
				<!--//content_web-->

				<!--appriciate-->
				<div class="testimonials_section">
					<div class="container">
						<div class="tittle_head">
							<h1 class="tittle" style="font-weight: bold;">Phản hồi giáo viên và học sinh</h1>
						</div>
						<div class="inner_sec_grids_info">
							<div id="Carousel" class="carousel slide two">

								<ol class="carousel-indicators second">
									<li data-target="#Carousel" data-slide-to="0" class="active"></li>
									<li data-target="#Carousel" data-slide-to="1"></li>
									<li data-target="#Carousel" data-slide-to="2"></li>
								</ol>

								<!-- Carousel items -->
								<div class="carousel-inner">

									<div class="item active">
										<div class="testimonials_grid_wthree">
											<img src="images/test1.jpg" alt=" " class="img-responsive" />
											<h4><i class="fa fa-quote-left" aria-hidden="true"></i> Trang web tạo đề thi nhanh, thuận tiện cho người 
											sử dụng. Cảm ơn trang web rất nhiều</h4>
											<h5>Thạc Sỹ: Trần Văn Cần</h5>

										</div>

									</div>
									<!--.item-->
									<div class="item">
										<div class="testimonials_grid_wthree">
											<img src="images/test2.jpg" alt=" " class="img-responsive" />
											<h4><i class="fa fa-quote-left" aria-hidden="true"></i> Trước kia em phải lên trường tham gia các bài thi
												trắc nghiệm, nay nhờ có trang web chúng em có thể ở nhà làm bài mà không phải tốn chi phí và thời
												gian di chuyển. Em cảm ơn trang web nhiều
											</h4>
											<h5>Học Sinh Trường THPT chuyên Trần Hưng Đạo</br>Huỳnh Thị Minh</h5>

										</div>
									</div>
									<!--.item-->

									<div class="item">
										<div class="testimonials_grid_wthree">
											<img src="images/test3.jpg" alt=" " class="img-responsive" />
											<h4><i class="fa fa-quote-left" aria-hidden="true"></i> Trang web bảo mật tốt các bài thi của tôi và việc tạo đề rất nhanh và tiện.
											</h4>
											<h5>Tiến Sỹ: Nguyễn Thị Thanh</h5>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//appriciate-->
			</div>
		</div> 
	</div>
	<!-- //inner_content -->
	
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.html">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination online</label></h2>
						</a>
						<p>© 2018 Soft. All rights reserved | Design by <a href="#">Group 11</a></p>
					</div>
				</div>
				<div class="col-md-3 footer_bottom_grid">
					<h6>Liên Hệ</h6>
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
	<script type="text/javascript">
			username_error_message=false;
			
			var ckname = function(){
				var username_length=$("#form_name").val().length;

				if(username_length<5||username_length>20)
				{
					$("#username_error_message").html("Lớn hơn 5 và nhỏ hơn 20 kí tự");
					$("#username_error_message").show();
					$("#form_name").css("border-bottom","2px solid #F90A0A");
					return true;
				}
				else
				{
					$("#username_error_message").hide();
					$("#form_name").css("border-bottom","2px solid #34F458");
					return false;
				}
			};
			$("#form_name").blur(ckname);

			var cknum = function(){
				var num_length=$("#form_num").val().length;
				if(num_length == 10 || num_length == 11)
				{
					
					$("#num_error_message").hide();
					$("#form_num").css("border-bottom","2px solid #34F458");
					return false;
				}
				else
				{
					$("#num_error_message").html("Ít nhất là 12 kí tự");
					$("#num_error_message").show();
					$("#form_num").css("border-bottom","2px solid #F90A0A");
					return true;

				}
			};
			$("#form_num").blur(cknum);

			var ckcmnd = function(){
				var cmnd_length=$("#form_cmnd").val().length;
				if(cmnd_length<9)
				{
					$("#cmnd_error_message").html("Ít nhất là 9 kí tự");
					$("#cmnd_error_message").show();
					$("#form_cmnd").css("border-bottom","2px solid #F90A0A");
					return true;
					
				}
				else
				{
					$("#cmnd_error_message").hide();
					$("#form_cmnd").css("border-bottom","2px solid #34F458");
					return false;
				}
			};
			$("#form_cmnd").blur(ckcmnd);

			var ckemail = function(){
				var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
				var email = $("#form_email").val();
				if(pattern.test(email) && email !== '') 
				{
					$("#email_error_message").hide();
					$("#form_email").css("border-bottom","2px solid #34F458");
					return false;
				} 
				else 
				{
					$("#email_error_message").html("Không đúng định dạng Email");
					$("#email_error_message").show();
					$("#form_email").css("border-bottom","2px solid #F90A0A");
					return true;
					
				}
			};
			$("#form_email").blur(ckemail);

			var ckpass = function(){
				var password_length = $("#form_pass").val().length;
				if (password_length < 8) {
					$("#pass_error_message").html("Ít nhất 8 kí tự");
					$("#pass_error_message").show();
					$("#form_pass").css("border-bottom","2px solid #F90A0A");
					return true;
					
				} 
				else
				{
					$("#pass_error_message").hide();
					$("#form_pass").css("border-bottom","2px solid #34F458");
					return false;
				}
			};
			$("#form_pass").blur(ckpass);

			var ckrepass = function(){
				var password = $("#form_pass").val();
				var retype_password = $("#form_re_pass").val();
				if(password !== retype_password)
				{
					$("#re_pass_error_message").html("Mật khẩu không khớp");
					$("#re_pass_error_message").show();
					$("#form_re_pass").css("border-bottom","2px solid #F90A0A");
					return true;
					
				} 
				else 
				{
					$("#re_pass_error_message").hide();
					$("#form_re_pass").css("border-bottom","2px solid #34F458");
					return false;
				}
			}
			$("#form_re_pass").blur(ckrepass);
		function ckeckSubmit() {
			if (ckrepass()||ckpass()||ckemail()||ckcmnd()||cknum()||ckname()) {
				return false;
			}
			else
			{
				checkRegister();
				return true;
			}
		}
		var myIndex = 0;
		carousel();

		function carousel() {
		    var i;
		    var x = document.getElementsByClassName("mySlides");
		    for (i = 0; i < x.length; i++) {
		       x[i].style.display = "none";  
		    }
		    myIndex++;
		    if (myIndex > x.length) {myIndex = 1}    
		    x[myIndex-1].style.display = "block";  
		    setTimeout(carousel, 2000); // Change image every 2 seconds
		}
	</script>
	${requestScope.thongbao}
	<h1>${bienCo }</h1>
</body>

</html>