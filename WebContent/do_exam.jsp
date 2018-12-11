<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <%@page import="BEAN.Question"%>
<%@page import="DAO.QuestionDAO"%>
<%@page import="controller.QuestionNextForward"%>
<%@page import="controller.NextQuestion"%>

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
		var count=1;
		function showQuestionPre()
		{
			count--;
			if (count<=1)
			{
				document.getElementById("Question2").style.display="none";
				document.getElementById("Question1").style.display="block"
				count=1;
			}
			
			else if(count==2)
			{
				document.getElementById("Question3").style.display="none";
				document.getElementById("Question2").style.display="block";
			}
			else if(count==3)
			{
				document.getElementById("Question4").style.display="none";
				document.getElementById("Question3").style.display="block";
			}
			else if(count==4)
			{
			    document.getElementById("Question3").style.display="none";
				document.getElementById("Question4").style.display="block";	
				
			}
			else if(count==5)
			{
				document.getElementById("form_finish").style.display="block";
				document.getElementById("do_exam").style.display="none";
				document.getElementById("time_exam").style.display="none";
				document.getElementById("btn").style.display="none";
				tinhDiem();
				count=6;
			}
		}
		function showQuestionNext()
		{
			count++;
			if(count==2)
			{
				document.getElementById("Question2").style.display="block";
				document.getElementById("Question1").style.display="none";
			}
			else if(count==3)
			{
				document.getElementById("Question3").style.display="block";
				document.getElementById("Question2").style.display="none";
			}
			else if(count==4)
			{
				document.getElementById("Question4").style.display="block";
				document.getElementById("Question3").style.display="none";
			}
			else if(count==5)
			{
				document.getElementById("form_finish").style.display="block";
				document.getElementById("do_exam").style.display="none";
				document.getElementById("time_exam").style.display="none";
				document.getElementById("btn").style.display="none";
				tinhDiem();
				count=4;
			}
			
		}
		function showStop()
		{
			alert('Bạn đã hết thời gian làm bài !!!\n\nBấm "Nộp Bài" để xem điểm');
			document.getElementById("tableResult").style.visibility = "hidden";
			document.getElementById("timeStop").style.display="none";
			document.getElementById("do_exam").style.marginTop = '30px';
		}
		function showReExamOnline()
		{
			document.getElementById("re_exam_student").style.display="block";
			$("#1a").is(":checked")=true;
			$("#2c").is(":checked")=true;
			$("#3d").is(":checked")=true;
			$("#4a").is(":checked")=true;
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

	<!--HIỂN THỊ TIMER TẠI ĐÂY-->
	<!--<div id="time_exam_minutes"></div>:
	<div id="time_exam">
	</div>-->
	<div class="time_do_exam" id="timeStop">
		<span id="time_exam_minutes">${minutes }</span><span>:</span>
		<span id="time_exam"></span>
	</div>
	<script type="text/javascript">
	
		var couter=60; //đây là số thời gian lấy trong CSDL nè
		var minutes=document.getElementById("time_exam_minutes").innerHTML;
		//var minutes=0;
		/*hàm đếm thời gian làm bài thi*/
		function demNguoc()
		{
			if(minutes===1)
			{
				minutes=0;	
			}
			if(minutes<10)
			{
				document.getElementById("time_exam_minutes").innerHTML="0"+minutes;
			}
			couter--;
			if(couter!=-1)
			{
				document.getElementById("time_exam").innerHTML=couter;
				if(couter<10)
				{
					document.getElementById("time_exam").innerHTML="0"+couter;
				}
				if(minutes<10)
				{
					document.getElementById("time_exam_minutes").innerHTML="0"+minutes;
				}
				document.getElementById("time_exam_minutes").innerHTML=minutes;
				setTimeout("demNguoc()",1000);
				if(couter==0)
				{
					couter=60;
					minutes--;
					document.getElementById("time_exam_minutes").innerHTML=minutes;
					document.getElementById("time_exam").innerHTML=couter;
				}
				if(minutes==0&&couter==1)
				{
					showStop();
				}
			}
		}
		demNguoc();
	
	</script>

	<!--form nộp bài khi kết thúc-->
	<div id="form_finish">
		<div class="finish">
			<p>BÀI THI CỦA BẠN ĐÃ HOÀN THÀNH</p>
			<p>ĐIỂM SỐ CỦA BẠN LÀ: </p>
			<div id="point" style="color: #fff; font-size: 30px; text-align: center;" ></div>
			<input type="Submit" name="" value="XEM BÀI" onclick="showReExamOnline()" style="margin-bottom: 10px;">
			<input type="Submit" name="" value="THOÁT" onclick="location.href='Student.html'">
		</div>
	</div>

	<!--LÀM BÀI THI TẠI ĐÂY-->
	<div class="container" id="do_exam">
		<div class="inner_sec_grids_info">
			<div class="col-md-4 job_info_left">
				<div class="table_result">
					<p>BẢNG ĐÁP ÁN</p>
					<form action="CheckResultStudentForward">
						<table id="tableResult" border="1" width="200" height="150" bordercolor="white">
							<tr>
								<th>STT</th>
								<th> A </th>
								<th> B </th>
								<th> C </th>
								<th> D </th>
								<th> E </th>
								<th> F </th>
							</tr>
							<%int i=0; for(Question c:QuestionDAO.DisplayQuestion(QuestionNextForward.ExamID))
							{ i++; if(c.getType()==1){%>
								<tr>
									<td> <%=i%> </td>
									<td> <input type="radio" name="<%=c.getQuestionID()%>" value="A"> </td>
									<td> <input type="radio" name="<%=c.getQuestionID()%>" value="B"> </td>
									<td> <input type="radio" name="<%=c.getQuestionID()%>" value="C"> </td>
									<td> <input type="radio" name="<%=c.getQuestionID()%>" value="D"> </td>
									<td> <input type="radio" name="<%=c.getQuestionID()%>" value="E"> </td>
									<td> <input type="radio" name="<%=c.getQuestionID()%>" value="F"> </td>
								</tr>
								<%}else{%>
								<tr>
									<td> <%=i%> </td>
									<td> <input type="checkbox" name="<%=c.getQuestionID()+"A"%>" value="A"> </td>
									<td> <input type="checkbox" name="<%=c.getQuestionID()+"B"%>" value="B"> </td>
									<td> <input type="checkbox" name="<%=c.getQuestionID()+"C"%>" value="C"> </td>
									<td> <input type="checkbox" name="<%=c.getQuestionID()+"D"%>" value="D"> </td>
									<td> <input type="checkbox" name="<%=c.getQuestionID()+"E"%>" value="E"> </td>
									<td> <input type="checkbox" name="<%=c.getQuestionID()+"F"%>" value="F"> </td>
								</tr>
								<%}%>	
							<%}%>					
						</table>
						<input type="Submit" name="" value="Nộp bài" style="width: 120px; height:40px; margin-top:20px; margin-left:120px; background:#fff; color:#1D1E1E;">
					</form>
				</div>
			</div>
			<script language="javascript">
				var diem=0;
				var flag=0;
            	document.getElementById("1c").onclick = function(e){
	                if (this.checked){
	                    diem+=2.5;
	                }
                };
                document.getElementById("2b").onclick = function(e){
	                if (this.checked){
	                    diem+=2.5;
	                }
                };
                document.getElementById("4d").onclick = function(e){
	                if (this.checked){
	                    diem+=2.5;
	                }
                };
                document.getElementById("3b").onclick = function(e){
	                if (this.checked){
	                    flag++;
	                }
                };
                document.getElementById("3c").onclick = function(e){
	                if (this.checked){
	                    flag++;
	                }
                };
                document.getElementById("3d").onclick = function(e){
	                if (this.checked){
	                    flag++;
	                }
	                if(flag==3)
                    {
                		diem+=2.5;
                    }
                };
                function tinhDiem()
                {
                	document.getElementById("point").innerHTML=diem;
                }
            </script>
			<div class="col-md-8 job_info_right">
				<div class="inf_exam">
					<div id="Question1">
						<p>${ContenQuestion}</p> 
						 <div class="result">
						 	<span>${AnswerA}</span><br>
							<span>${AnswerB}</span><br>
							<span>${AnswerC}</span><br>
							<span>${AnswerD}</span><br>
							<span>${AnswerE}</span><br>
							<span>${AnswerF}</span><br>
						 </div>
				    </div>
				</div>
			</div>
		</div>
	</div>
	
	<!--cho nó hiển thị các button để bấm-->
	<div class="container" id="btn" style="margin-top: 40px; margin-bottom: 40px;">
		<div class="inner_sec_grids_info_w3ls">
			<div class="col-md-4 job_info_left">
				<p> </p>
			</div>
			<div class="col-md-8 job_info_right">
				<div class="btn_exam">
					<a href="QuestionPreForward" style="font-size: 25px; margin-right:20px; color: #fff; border:black solid 2px; background: #FFB900;">Trở về</a>
					<a href="QuestionNextForward?stt=<%=request.getAttribute("stt")==null?"0":request.getAttribute("stt")%>" style="font-size: 25px; margin-right:20px; color: #fff; border:black solid 2px; background: #FFB900;">Tiếp theo</a>
					<a id="preW" href="javascript:preQ()" style="font-size: 25px; margin-right:20px; color: #fff; border:black solid 2px; background: #FFB900;">Pre</a>
					<a id="nextW" href="javascript:nextQ(<%=request.getAttribute("stt")==null?"0":request.getAttribute("stt")%>)" style="font-size: 25px; margin-right:20px; color: #fff; border:black solid 2px; background: #FFB900;">Next</a>
				</div>
			</div>
		</div>
	</div>
	<span>${thongbao}</span>
	
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
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
			
		}
		
		function nextQ(stt) {
			$.get("/ExaminationOnline/NextQuestion?ExamID=<%=QuestionNextForward.ExamID%>&stt=" +stt, content => $(".inf_exam").html(content));
			$("#nextW").attr("href", "javascript:nextQ(" + (parseInt(stt) + 1) +")");
				
		}
		function preQ() {
			$.get("/ExaminationOnline/PreQuestion", content => { $(".inf_exam").html(content); console.log(content); });
			$("#preW").attr("href", "javascript:preQ()");
			let href = $("#nextW").attr("href");
			let start = href.indexOf("(") + 1;
			let end = href.lastIndexOf(")");
			let stt = href.substring(start, end);
			let tt = parseInt(stt);
			
			$("#nextW").attr("href", "javascript:nextQ(" + (tt - 1) +")");
		}
	</script>
	<!-- //password-script -->

	<script type="text/javascript" src="js/bootstrap.js"></script>
	<h1>${requestScope.loi}</h1>
</body>

</html>