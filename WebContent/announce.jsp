<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <%@page import="BEAN.announce"%>
<%@page import="DAO.AnnounceDAO"%>
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
	<script type="text/javascript">
		function showQuestionLogout()
		{
			document.getElementById("question_delete").style.display="block";
			document.getElementById("xxx").innerHTML="Bạn có chắc muốn đăng xuất ?"
		}
		function hideQuestionLogout()
		{
			document.getElementById("question_delete").style.display="none";
		}
		function hideQuestionLoginAndChangePage()
		{
			
		    location.href='index.html';
		}
		function myFunction() {
		    var input, filter, ul, li, a, i, txtValue;
		    input = document.getElementById("myInput");
		    filter = input.value.toUpperCase();
		    ul = document.getElementById("myUL");
		    li = ul.getElementsByTagName("li");
		    for (i = 0; i < li.length; i++) {
		        a = li[i].getElementsByTagName("a")[0];
		        txtValue = a.textContent || a.innerText;
		        if (txtValue.toUpperCase().indexOf(filter) > -1) {
		            li[i].style.display = "";
		        } else {
		            li[i].style.display = "none";
		        }
		    }
	</script>
	<style>
	#myInput {
		  background-image: url('/css/searchicon.png');
		  background-position: 10px 12px;
		  background-repeat: no-repeat;
		  width: 100%;
		  font-size: 16px;
		  padding: 12px 20px 12px 40px;
		  border: 1px solid #ddd;
		  margin-bottom: 12px;
		}
		
		#myUL {
		  list-style-type: none;
		  padding: 0;
		  margin: 0;
		}
		
		#myUL li a {
		  border: 1px solid #ddd;
		  margin-top: -1px; /* Prevent double borders */
		  background-color: #f6f6f6;
		  padding: 12px;
		  text-decoration: none;
		  font-size: 18px;
		  color: black;
		  display: block
		}
		
		#myUL li a:hover:not(.header) {
		  background-color: #eee;
		}
	</style>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<!--<link href="//fonts.googleapis.com/css?family=Work+Sans:200,300,400,500,600,700" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>-->
</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="index.jsp">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examintion Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="ThongTinCN.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#" onclick="showQuestionLogout()"><span class="fa fa-sign-out"></span> Đăng xuất</a>
						 </div>
					</div>
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>THÔNG BÁO</h3>
	</div>
	<!--Form đăng xuất-->
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-3"><div id="question_delete">
		<div class="delete">
			<div id="xxx" style="font-size: 20px; color: #1E1D1D;"></div>
		    <div class="btn_yesno">
				<input type="Submit" name="" value="ĐỒNG Ý" onclick="hideQuestionLoginAndChangePage()">
		    	<input type="Submit" name="" value="THOÁT" onclick="hideQuestionLogout()">	
			</div>
		</div>
	</div></div>
		<div class="col-md-3"></div>
	</div>

	<!--//banner -->
	<!-- /inner_content -->
	<div class="content_anoun">
		<div class="container">
			<div class="inf_anoun">
				<div class="col-md-8 job_info_left">
					<%for(announce c:AnnounceDAO.DisplayAnnounce())
						{%>
					<div class="tab_grid_prof">
					
						<div class="col-sm-3 loc_1">
							<a href="#"><img src="images/thongbao.jpg" width="130px" height="200px" alt=""></a>
						</div>
						<div class="col-sm-9">
							<div class="location_box1">
								<h6><%=c.getTitleMainNews() %></h6>
								<span class="inf1"><%=c.getTitleNews() %></span>
								<div class="inf">
									<ul>

										<li><span><%=c.getContentNews() %></span></li>
									</ul>
								</div>
							</div>
						</div>
						<hr  width="30%" size="5px" align="center" color="red" /> 
						<div class="clearfix"> </div>
					</div>
					<%} %>
				</div>
				<div class="col-md-4 job_info_right">

					<div class="widget_search">
						<h5 class="widget-title">Tìm Kiếm</h5>
						<div class="widget-content">
							<span>Nhập Từ Khóa</span>
							<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
							<!--<input type="text" class="form-control jb_2" placeholder="Từ khóa thông báo">-->
							<input type="submit" value="tìm kiếm">
						</div>
					</div>
					<div class="col_3 permit">
						<h3>Các thông báo</h3>
						<ul id="myUL">
						 <%for(announce c:AnnounceDAO.DisplayAnnounce())
						    {%>
							  <li><a href="#"><%=c.getTitleMainNews() %></a></li>
							 <%} %>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
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
						<a href="index.jsp">
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
</body>

</html>