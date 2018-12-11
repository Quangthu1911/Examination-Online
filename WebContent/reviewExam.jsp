<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <%@page import="BEAN.Question"%>
<%@page import="DAO.QuestionDAO"%>
<%@page import="DAO.AnswerStudentDAO"%>
<%@page import="controller.QuestionNextForward"%>
<%@page import="controller.reviewExamStudent"%>
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
	
</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="index.jsp">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="ThongTinCN.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
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
	<h2 style="text-align: center; margin-top: 10px; font-weight: bold;">ID: ${idexamreview } MẠNG MÁY TÍNH</h2>
	<div class="reviewExam">
		<%int i=0; for(Question c:QuestionDAO.DisplayQuestion(QuestionNextForward.ExamID))
			{ i++;%>
				<div class="everyQuestion" style="margin-bottom: 10px;">
					<p><a href="#">Câu <%=i%>:</a> <%=c.getContentQuestion()%></p>
					<%if(c.getType()==1){%>
					<form action="reviewExamStudent">
					
							<%if(reviewExamStudent.listtemp.get(i-1).getValue().equals("A")){ %>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="A" checked> A: <%=c.getAnswerA()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="B"> B: <%=c.getAnswerB()%></p>
								<%String dapAnTS=AnswerStudentDAO.ResultOfStudent(c.getQuestionID());
								if(QuestionDAO.checkResultStudent(dapAnTS,c.getQuestionID())==false){%>
								<p style="float: right;">Sai! Đáp án đúng: <%=c.getAnswerTrue()%></p>
								<%}%>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="C" > C: <%=c.getAnswerC()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="D" > D: <%=c.getAnswerD()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="E" > E: <%=c.getAnswerE()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="F" > F: <%=c.getAnswerF()%></p>
								
								
							<%}else if(reviewExamStudent.listtemp.get(i-1).getValue().equals("B")){ %>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="A" > A: <%=c.getAnswerA()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="B" checked> B: <%=c.getAnswerB()%></p>
								<%String dapAnTS=AnswerStudentDAO.ResultOfStudent(c.getQuestionID());
								if(QuestionDAO.checkResultStudent(dapAnTS,c.getQuestionID())==false){%>
								<p style="float: right;">Sai! Đáp án đúng: <%=c.getAnswerTrue()%></p>
								<%}%>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="C" > C: <%=c.getAnswerC()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="D" > D: <%=c.getAnswerD()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="E" > E: <%=c.getAnswerE()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="F" > F: <%=c.getAnswerF()%></p>
								
								
							<%}else if(reviewExamStudent.listtemp.get(i-1).getValue().equals("C")){  %>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="A" > A: <%=c.getAnswerA()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="B" > B: <%=c.getAnswerB()%></p>
								<%String dapAnTS=AnswerStudentDAO.ResultOfStudent(c.getQuestionID());
								if(QuestionDAO.checkResultStudent(dapAnTS,c.getQuestionID())==false){%>
								<p style="float: right;">Sai! Đáp án đúng: <%=c.getAnswerTrue()%></p>
								<%}%>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="C" checked> C: <%=c.getAnswerC()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="D" > D: <%=c.getAnswerD()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="E" > E: <%=c.getAnswerE()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="F" > F: <%=c.getAnswerF()%></p>
								
								
							<%}else if(reviewExamStudent.listtemp.get(i-1).getValue().equals("D")){%>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="A" > A: <%=c.getAnswerA()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="B" > B: <%=c.getAnswerB()%></p>
								<%String dapAnTS=AnswerStudentDAO.ResultOfStudent(c.getQuestionID());
								if(QuestionDAO.checkResultStudent(dapAnTS,c.getQuestionID())==false){%>
								<p style="float: right;">Sai! Đáp án đúng: <%=c.getAnswerTrue()%></p>
								<%}%>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="C" > C: <%=c.getAnswerC()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="D" checked> D: <%=c.getAnswerD()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="E" > E: <%=c.getAnswerE()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="F" > F: <%=c.getAnswerF()%></p>
								
								
							<%}else if(reviewExamStudent.listtemp.get(i-1).getValue().equals("E")){ %>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="A" > A: <%=c.getAnswerA()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="B" > B: <%=c.getAnswerB()%></p>
								<%String dapAnTS=AnswerStudentDAO.ResultOfStudent(c.getQuestionID());
								if(QuestionDAO.checkResultStudent(dapAnTS,c.getQuestionID())==false){%>
								<p style="float: right;">Sai! Đáp án đúng: <%=c.getAnswerTrue()%></p>
								<%}%>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="C" > C: <%=c.getAnswerC()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="D" > D: <%=c.getAnswerD()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="E" checked> E: <%=c.getAnswerE()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="F" > F: <%=c.getAnswerF()%></p>
								
								
							<%}else if(reviewExamStudent.listtemp.get(i-1).getValue().equals("F")){ %>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="A" > A: <%=c.getAnswerA()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="B" > B: <%=c.getAnswerB()%></p>
								<%String dapAnTS=AnswerStudentDAO.ResultOfStudent(c.getQuestionID());
								if(QuestionDAO.checkResultStudent(dapAnTS,c.getQuestionID())==false){%>
								<p style="float: right;">Sai! Đáp án đúng: <%=c.getAnswerTrue()%></p>
								<%}%>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="C" > C: <%=c.getAnswerC()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="D" > D: <%=c.getAnswerD()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="E" > E: <%=c.getAnswerE()%></p>
								<p><input type="radio" name="<%=c.getQuestionID()%>" value="F" checked> F: <%=c.getAnswerF()%></p>
							<%} %>
					</form>
					<%}else{%>
					<form action="reviewExamStudent">

								<%if(reviewExamStudent.listtemp.get(i-1).getValue().indexOf("A") >= 0){ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"A"%>" value="A" checked> A: <%=c.getAnswerA()%></p>
								<%}else{ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"A"%>" value="A" > A: <%=c.getAnswerA()%></p>
								
								
								<%}if(reviewExamStudent.listtemp.get(i-1).getValue().indexOf("B")>=0){ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"B"%>" value="B" checked> B: <%=c.getAnswerB()%></p>
								<%}else{ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"B"%>" value="B" > B: <%=c.getAnswerB()%></p>
								<%} %>
								
								
								<%String dapAnTS=AnswerStudentDAO.ResultOfStudent(c.getQuestionID());
								if(QuestionDAO.checkResultStudent(dapAnTS,c.getQuestionID())==false){%>
								<p style="float: right;">Sai! Đáp án đúng: <%=c.getAnswerTrue()%></p>
								<%}%>
								
								<%if(reviewExamStudent.listtemp.get(i-1).getValue().indexOf("C") >= 0){ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"C"%>" value="C" checked> C: <%=c.getAnswerC()%></p>
								<%}else{ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"C"%>" value="C" > C: <%=c.getAnswerC()%></p>
								
								
								<%}if(reviewExamStudent.listtemp.get(i-1).getValue().indexOf("D") >= 0){ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"D"%>" value="D" checked> D: <%=c.getAnswerD()%></p>
								<%}else{ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"D"%>" value="D" > D: <%=c.getAnswerD()%></p>
								
								
								<%}if(reviewExamStudent.listtemp.get(i-1).getValue().indexOf("E") >= 0){ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"E"%>" value="E" checked> E: <%=c.getAnswerE()%></p>
								<%}else{ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"E"%>" value="E" > E: <%=c.getAnswerE()%></p>
								
								
								<%}if(reviewExamStudent.listtemp.get(i-1).getValue().indexOf("F") >= 0){ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"F"%>" value="F" checked> F: <%=c.getAnswerF()%></p>
								<%}else{ %>
									<p><input type="checkbox" name="<%=c.getQuestionID()+"F"%>" value="F" > F: <%=c.getAnswerF()%></p>
								<%} %>
								
							
					</form>
					<%}%>
				</div>
			<%}%>
	</div>
	<a href="Student.jsp" style="font-size:30px; margin-left:900px; background: #FFB900; color:#fff; border:#fff solid 1px; border-radius:5px;">TRỞ VỀ</a>
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
	<h1>${bien }</h1>
</body>