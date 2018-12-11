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
		function showQuestionDelete()
		{
			document.getElementById("question_delete").style.display="block";

		}
		function hideQuestionDelete()
		{
			document.getElementById("question_delete").style.display="none";
		}
		function showAddExam(){
			document.getElementById("formEdit").style.display="block";
		}
		function showExam(){
			document.getElementById("addExamLocal").style.display="block";
			document.getElementById("formEdit").style.display="none";
		}
		function hideformStructExam(){
			document.getElementById("formStructExam").style.display="none";
			 document.getElementById("formEdit").style.display="block";
		}
		function showformStructExam(){
			document.getElementById("formStructExam").style.display="block";
			 document.getElementById("formEdit").style.display="none";
		}
		function hideformEdit()
		{
			document.getElementById("formEdit").style.display="none";
		}
		function hideformQuestionExam()
		{
			document.getElementById("formQuestionExam").style.display="none";
		}
		function showformQuestionExam()
		{
			document.getElementById("formQuestionExam").style.display="block";
			document.getElementById("formStructExam").style.display="none";
		}
		function showformEditExam()
		{
			document.getElementById("formEditExam").style.display="block";
		}
		function hideformEditExam()
		{
			document.getElementById("formEditExam").style.display="none";
		}
		function showformAddStudent()
		{
			document.getElementById("formAddStudentExam").style.display="block";
		}
		function showListStudent()
		{
			document.getElementById("listStudent").style.display="block";
		}
		function showListStudent(){
			document.getElementById("formAddStudentExam").style.display="none";
		}
		function hideAddStudent(){
			document.getElementById("formAddStudentExam").style.display="none";
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"> 

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
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Trần Thị Nga</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="ThongTinCN.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="anounce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
						 </div>
					</div>
				</div>
			</nav>

		</div>
	</div>



	<!-- banner -->
	<div class="inner_page_agile">
		<h3>GIÁO VIÊN</h3>
		<p>Chào mừng bạn đến với trang thư viện đề thi</p>
		
	</div>

	<!--Form hỏi có chắc xóa hay không ?-->
	<div id="question_delete">
		<div class="delete">
			<p>BẠN CÓ CHẮC CHẮN XÓA ĐỀ THI NÀY KHÔNG Á????</p>
		    <div class="btn_yesno">
				<input type="Submit" name="" value="ĐỒNG Ý" onclick="">
		    	<input type="Submit" name="" value="THOÁT" onclick="hideQuestionDelete()">	
			</div>
		</div>
	</div>


	<!-- form add student -->

	<div id="formAddStudentExam" style="display: none;">
		<div class="editboxAddStudent">
			<h1 id="addExam" style="margin-top: -50px;">Thêm thí sinh</h1>
			<div class="local1">
				<div>
					<table id="example">
						<thead>
				    		<tr><th class="site_name">Name</th><th>Nơi công tác </th><th>CMND</th></tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
				
				<div class="clearfix"></div>
		    </div>
		    <div class="collumnAddStudent" style="margin-top: 40px;">
					<div class="row">
						<div class="col-md-3" >
							<div id="add" class="in4AddStudent">
								Thêm
							</div>
							<div id="Delete" class="in4AddStudent" style=" margin-left: 10px;">
								Xóa
							</div>
						</div>
						<div class="col-md-2">
							<div id="nameStudent" class="in4AddStudent1" >
								Tên thí sinh
							</div>
						</div>
						<div class="col-md-6">
							<textarea rows="1" cols="50" style="background-color: ;"></textarea>
							<div class="listStudent" style="background-color: white;display: none;z-index: 100;">
								<ul type="none">
									<li>Nguyễn Trần Trung Hiếu</li>
									<li>Anh Minh Thần </li>
									<li>Võ Đại Nhân Sinh</li>
								</ul>
							</div>
						</div>
						
						<div class="col-md-1" >
							<img src="images\iconDown.png" width="20px;" style="margin-top: 10px;" 
							">
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-3" >
							<div id="add"class="in4AddStudent">
								Lưu
							</div>
							<div id="add"class="in4AddStudent" style=" margin-left: 10px;">
								Hủy
							</div>
						</div>
						<div class="col-md-2">
							<div id="add" class="in4AddStudent1">
								Nơi công tác
							</div>
						</div>
						<div class="col-md-6">
							<textarea rows="1" cols="50" style="background-color: ;"></textarea>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3" >
							<button id="add" class="in4AddStudent" style="width: 170px;background-color: #a96858;" onclick="hideAddStudent()" >
								Thoát
							</button>
						</div>
						<div class="col-md-2">
							<div id="add"class="in4AddStudent1">
								CMND
							</div>
						</div>
						<div class="col-md-6">
							<textarea rows="1" cols="50" style="background-color: ;"></textarea>
						</div>
					</div>
			</div>
		</div>
 	</div>
	


	<!-- close form add student -->
<!-- form tạo cấu trúc đề thi -->

	<div id="formStructExam" style="display: none">
		<div class="editbox">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Thêm đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Khởi tạo đề thi
				</div>
				<div style="margin-top: 20px; margin-bottom: 10px;">
					<div>
						<input type="text" name="idExam" class="structExam" placeholder="Mã đề thi">
					</div>
					<div>
						<input type="text" name="nameExam" class="structExam" placeholder="Tên đề thi">
					</div>
					<div>
						<input type="text" name="idExam" class="structExam" placeholder="Thời gian bắt đầu">
					</div>
					<div>
						<input type="text" name="idExam" class="structExam" placeholder="Thời gian kết thúc">
					</div>
					<div>
						<input type="text" name="idExam" class="structExam" placeholder="Thời gian làm bài">
					</div>
					<div>
						<input type="text" name="idExam" class="structExam" placeholder="Điểm mỗi câu">
					</div>
					<div>
						<input type="text" name="idExam" class="structExam" placeholder="Sõ câu">
					</div>
					<div class="row" style="margin-top: 10px;">
						<div class="col-md-6">
							<button id="btnCancel" onclick="hideformStructExam()">Hủy</button>
						</div>
						<div class="col-md-6">
							<button id="btnNext" onclick="showformQuestionExam()">Tiếp theo</button>
						</div>
					</div>
				<div>
						
			</div>
					
			</div>
			</div>
	</div>
</div>
	<!-- Đóng form tạo cấu trúc đề thi -->

	<!-- form tạo câu hỏi đề thi -->
	<div id="formQuestionExam" style="display: none;">
		<div class="editbox1">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Thêm đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Khởi tạo đề thi
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
					Câu 1: <textarea rows="2" cols="80" style="background-color: black;margin-top: 20px;"></textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
						B: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
						C: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
						D: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea>
					</div>
					<div class="col-md-4" style="margin-top: 20px;">
						<div style="border-radius: 20px;border-style: solid;border-color: white;height: 190px;">
							<div class="row" style="color: white ;margin-top: 15px;">
								<div class="col-md-7">
									Loại câu hỏi<br>
									<form action="">
										<div style="margin-top: 15px;">

											<input type="radio" name="Cate" value="1">1 đáp án<br>
											<input type="radio" name="Cate" value="2">nhiều đáp án<br>
											<input type="radio" name="Cate" value="3">Đúng sai<br>

										</div>
										
										
									</form>
									
								</div>
								<div class="col-md-4" style="border-style: solid;border-color: white;height: 150px;width: 0.1;border-radius: 10px;">
									<form action="">
										<div style="margin-top: 15px;">

											<input type="radio" name="DA" value="1">A<br>
											<input type="radio" name="DA" value="2">B<br>
											<input type="radio" name="DA" value="3">C<br>
											<input type="radio" name="DA" value="3">D<br>

										</div>
										
									</form>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div style="margin-top: 20px; margin-bottom: 10px;">
					
					<div class="row" style="margin-top: 10px;">
						<div class="col-md-6">
							<button id="btnCancel" onclick="hideformQuestionExam()">Hoàn thành</button>
						</div>

						<div class="col-md-6">
							<button id="btnNext">Tiếp theo</button>
						</div>
					</div>
				<div>
						
			</div>
					
			</div>
			</div>
	</div>
</div>
	<!-- Đóng form tạo câu hỏi đề thi -->
	<!-- form edit question exam -->
	<div id="formEditExam" style="display: none;">
		<div class="editbox1">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Sửa câu hỏi đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Bảng câu hỏi
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
					Câu 1: <textarea rows="2" cols="80" style="background-color: black;margin-top: 20px;">The IP address belong to subnetmask have address 255.255.255.224 is</textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.10.0/24</textarea><br>
						B: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;">172.16.1.0/22</textarea><br>
						C: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;">10.8.1.2/21</textarea><br>
						D: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.1.1/26</textarea>
					</div>
					<div class="col-md-4" style="margin-top: 20px;">
						<div style="border-radius: 20px;border-style: solid;border-color: white;height: 190px;">
							<div class="row" style="color: white ;margin-top: 15px;">
								<div class="col-md-7">
									Loại câu hỏi<br>
									<form action="">
										<div style="margin-top: 15px;">

											<input type="radio" name="Cate" value="1">1 đáp án<br>
											<input type="radio" name="Cate" value="2">nhiều đáp án<br>
											<input type="radio" name="Cate" value="3">Đúng sai<br>

										</div>
										
										
									</form>
									
								</div>
								<div class="col-md-4" style="border-style: solid;border-color: white;height: 150px;width: 0.1;border-radius: 10px;">
									<form action="">
										<div style="margin-top: 15px;">

											<input type="radio" name="DA" value="1">A<br>
											<input type="radio" name="DA" value="2">B<br>
											<input type="radio" name="DA" value="3">C<br>
											<input type="radio" name="DA" value="3">D<br>

										</div>
										
									</form>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div style="margin-top: 20px; margin-bottom: 10px;">
					
					<div class="row" style="margin-top: 10px;">
						<div class="col-md-6">
							<button id="btnCancel" onclick="hideformEditExam()">Hoàn thành</button>
						</div>

						<div class="col-md-6">
							<button id="btnNext">Tiếp theo</button>
						</div>
					</div>
				<div>
						
			</div>
					
			</div>
			</div>
	</div>
</div>
	<!-- Đóng form edit question exam -->
<!-- form tạo đề thi -->
	<div id="formEdit" style="display: none;">
		<div class="editbox">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Thêm đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Thêm từ hệ thống
				</div>
				<div>
					<div class="row">
						<div class="col-md-3 image" >
						</div>
						<div class="col-sm-9 content-exam">
							<div>
								<span>Id đề thi: 0x2012</span>
								<input type="file" name="" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" style="margin-top: 10px;" />
								<button class="btnExam buttonExam" onclick="showExam()">Lưu</button>
							</div>
						
						</div>
					</div>
				<div>
						
			</div>
					
			</div>
			</div>
			<div class="local" style="margin-top: 10px;">
				<div class="addExam-title">
					Tạo câu hỏi trực tiếp
				</div>
				<div>
					<div class="row">
						<div class="col-md-3 image" >
						</div>
						<div class="col-sm-9 content-exam">
							<div>
								<span>Để tạo câu hỏi mời nhấn khởi tạo</span>
								
								<button class="btnExam buttonExam" onclick="showformStructExam()">Khởi tạo</button>
							</div>
						
						</div>
					</div>
				<div>
					
			</div>
					
			</div>
			</div>
			<div style="margin-top: 15px;margin-left: 4px;font-size: 20px">
				<button style="border-radius: 10px;" id="btnCancel1" onclick="hideformEdit()">Hủy</button>
			</div>	
		</div>
	</div>
	<!-- Đóng form tạo để thi -->
	<!--//banner -->

	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li><a href="Teacher.jsp">THÔNG TIN</a></li>
				 			<li><a href="#">CHỈNH SỬA</a></li>
				 			<li><a href="Student.jsp">QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="announce.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>

			<div class="col-md-9 mana_info_right">
				<div class="show_inf_student">
					<!--<p> </p>-->

					<!--QUẢN LÝ ĐỀ THI-->
					<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="location_single.html"><img src="images/loc6.jpg" alt=""></a>
										</div>
										<div class="col-sm-9">
											<div class="jobs_right">
												<div class="date">09 <span>Nov</span></div>
												<div class="date_desc">
													<h6 class="title"><a href="#">MẠNG MÁY TÍNH</a></h6>
													<span class="meta">Thời gian làm bài: 10 phút</span>
												</div>

												<p class="description">
													Hạn nộp bài: 12/10<br>
													Số câu hỏi: 10 câu<br>
													Nội dung: cũng cố kiến thức chương 2
												</p>
												<div class="read"><a href="do_exam.jsp" class="read-more">Làm Bài</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showformAddStudent()" class="fa fa-plus-square"></a>
													</li>
													<li><a href="#" onclick="showformEditExam()" class="fa fa-building-o"></a></li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-trash-o"></a></li>
													<li><a href="conservation.jsp" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/loc5.jpg" alt=""></a>
										</div>
										<div class="col-sm-9">
											<div class="jobs_right">
												<div class="date">23 <span>Nov</span></div>
												<div class="date_desc">
													<h6 class="title"><a href="#">HỆ ĐIỀU HÀNH</a></h6>
													<span class="meta">Thời gian làm bài: 10 phút</span>
												</div>

												<p class="description">
													Hạn nộp bài: 25/10<br>
													Số câu hỏi: 10 câu<br>
													Nội dung: kiểm tra giữa kì
												</p>
												<div class="read"><a href="do_exam.jsp" class="read-more">Làm Bài</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showformAddStudent()" class="fa fa-plus-square"></a>
													</li>
													<li><a href="#" onclick="showformEditExam()" class="fa fa-building-o"></a></li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-trash-o"></a></li>
													<li><a href="#" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="tab_grid" id="addExamLocal"style="display: none">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/loc6.jpg" alt=""></a>
										</div>
										<div class="col-sm-9" >
											<div class="jobs_right">
												<div class="date">1 <span>Dem</span></div>
												<div class="date_desc" >
													<h6 class="title"><a href="#">HỆ QUẢN TRỊ CSDL</a></h6>
													<span class="meta">Thời gian làm bài: 15 phút</span>
												</div>

												<p class="description">
													Hạn nộp bài: 3/12<br>
													Số câu hỏi: 15 câu<br>
													Nội dung: kiểm tra giữa kì
												</p>
												<div class="read"><a href="do_exam.jsp" class="read-more">Làm Bài</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showformAddStudent()" class="fa fa-plus-square"></a>
													</li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-building-o"></a></li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-trash-o"></a></li>
													<li><a href="#" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
					</div>
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
					<div> 
​						<button class=" btnAdd" onclick="showAddExam()">+</button>

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
	<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> -->

</body>
 <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script>
  $(function(){
    $("#example").dataTable({ // Search va  Show entry được dataTable trong jquery ho tro
  "aaData":[
    ["Phan Hữu Hiếu","Bình Phước","221566"],
    ["Sói con lạc lối","Cà Mau","556565"],
    ["Play from far home","Bà Rịa","565656"],
    ["Phan Thị Thư","Long An","56655"],
    ["Nguyen Thị Thuận","Phú Xuyên","565656"],
    ["Tran Thị Nhung","Cần Thơ","54654654"],
    ["Hoang Minh","Quận 2","54654564"],
    ["Phan Hữu Hiếu","Quận 3","56656"],
    ["Phan Hữu Hiếu","Quận 4","68865456"],

  ],
  "aoColumnDefs":[{
        "sTitle":"Tên thí sinh"
      , "aTargets": [ "site_name" ]
  }]
});
  })
  </script>
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