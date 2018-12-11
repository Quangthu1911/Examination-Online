<%@page import="controller.LoginForward"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <%@page import="BEAN.Exam"%>
<%@page import="DAO.ExamDAO"%>
<%@page import="DAO.ScoreDAO"%>
<!DOCTYPE html>
<html>

<head>
	<title>Soft a Human Resource Management Category Bootstrap Responsive Web Template | Contact :: w3layouts</title>
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
		var flag=0;
		function showQuestionDelete()
		{
			document.getElementById("question_delete").style.display="block";
			document.getElementById("request").innerHTML="Bạn có chắc muốn xóa đề thi này ?"
			flag=0;

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
			if(flag==0)
			{
				//nếu rảnh thì làm cái xóa luôn không thì thôi
				document.getElementById("exam3").style.display="none";
			}
			else
			{
				location.href='index.jsp';
			}
			
		}
	</script>
	<!--//tags -->
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
						<button class="dropbtn"><div>${UserLogin }</div></button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="ThongTinCN.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
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
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li><a href="#">THÔNG TIN</a></li>
				 			<li><a href="#">CHỈNH SỬA</a></li>
				 			<li><a href="Student.jsp">QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="announce.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>
			<div class="col-md-9 mana_info_right">
				<div class="show_inf_student">
				
					<!--QUẢN LÝ ĐỀ THI-->
					<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
				<% for(Exam c:ExamDAO.DisplayExamStudent(LoginForward.name))
						{ int ngay=ExamDAO.getDateExam(c.getTimeStart()); int thangg=ExamDAO.getMonthExam(c.getTimeStart());%>
									<!--Form hỏi có chắc xóa hay không ?-->
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-3"><div id="question_delete">
										<div class="delete">
											<div id="request" style="font-size: 20px; color: #1E1D1D;"></div>
										    <div class="btn_yesno">
										        <a href="DeleteExamStudentForward?idExam=<%=c.getExamID()%>"  style="color:#1E1D1D; margin-right: 30px;">ĐỒNG Ý</a>
										        <a href="#" onclick="hideQuestionDelete()">THOÁT</a>
												
											</div>
										</div>
									</div></div>
										<div class="col-md-3"></div>
									</div>
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/thitracnghiem.jpg" alt="" style="margin-top:30px;" width="180px" heigh="900px;"></a>
										</div>
										<div class="col-sm-9">
											<div class="jobs_right">
												<div class="date"><%=ngay %><span><div></div><%=thangg %></span></div>
												<div class="date_desc">
													<h6 class="title"><%=c.getExamName()%><a href="#"></a></h6>
													<span class="meta">Thời gian làm bài: <%=c.getTimeDoExam()%></span>
												</div>
												<p class="description">
													Hạn nộp bài: <%=c.getTimeEnd().substring(0,16)%><br>
													Số câu hỏi: <%=c.getCountQuestion()%><br>
													Giáo viên: <%=c.getUserLogin()%><br>
												</p>
												
												<div class="read">
													<%
													if(ScoreDAO.checkStudentExam(c.getExamID())){%>
														<a href="QuestionNextForward?ExamID=<%=c.getExamID()%>" class="read-more">Làm Bài</a>
													<%}%>	
												</div>
												
												<ul style="margin-top:-20px;" class="top-btns">
													<li><a href="Xem điêm thí sinh.jsp" title="Xem điểm bài thi" class="fa fa-building-o"></a></li>
													<li><a href="#" title="Xóa bài thi" class="fa fa-trash-o" onclick="showQuestionDelete()"></a></li>
													<li><a href="ConserStudenrForward?ExamIDConser=<%=c.getExamID()%>" title="Thảo luận đề thi" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
								<%}%>
					</div>
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
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
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	${requestScope.thongbao}
	<h1>${bienconha }</h1>
</body>

</html>