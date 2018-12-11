<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Trắc nghiệm online</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- script of in4 student -->
	<script type="text/javascript">
		function showformIn4()
		{
			document.getElementById("in4mation").style.display="block";
			document.getElementById("formEdit1").style.display="none";
			document.getElementById("home1").style.display="none";
			document.getElementById("formDetailExam").style.display="none";
			document.getElementById("formViewScrore").style.display="none";
			

		}
		function showformDetail(){
			document.getElementById("formDetailExam").style.display="block";
			document.getElementById("in4mation").style.display="none";
			document.getElementById("formEdit1").style.display="none";
			document.getElementById("home1").style.display="none";
		}


	</script>

	<script type="text/javascript">
		function saveEditIn4(){
			var v1=document.getElementById("nameIn4").value;
			var v2=document.getElementById("phone").value;
			var v3=document.getElementById("cer").value;
			var v4=document.getElementById("addr").value;
			if(v1==""|v2==""|v3==""|v4=="")
			{
				alert("Không được bỏ trống trường nào hết");

			}
			else
					hideEditIn4();
		}

	</script>
	<script type="text/javascript">
		function showformEdit(){
			 // document.getElementById("in4mation").style.display="none";
			document.getElementById("formEdit1").style.display="block";
		}
		function hideEditIn4()
		{
			document.getElementById("formEdit1").style.display="none";
		}
		function showHome(){
			document.getElementById("formEdit1").style.display="none";
			document.getElementById("home1").style.display="block";
			document.getElementById("in4mation").style.display="none";
			document.getElementById("formViewScrore").style.display="none";
			document.getElementById("formDetailExam").style.display="none";
		}
		function showScoreStudent(){
			document.getElementById("home1").style.display="none";
			document.getElementById("formViewScrore").style.display="block";
		}
	</script>
	
<!-- close script ò in4 student -->
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
			document.getElementById("formCreateExam").style.display="none";
			 document.getElementById("formEdit").style.display="block";
		}
		function showformStructExam1(){
			document.getElementById("formStructExam").style.display="block";
			 document.getElementById("formCreateExam").style.display="none";
		}
		function showformStructExam(){
			document.getElementById("formCreateExam").style.display="block";
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
						<a class="navbar-brand" href="index.jsp">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="GV.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
							<a href="index.jsp"><span class="fa  fa-arrow-left"></span>Trở về trang chủ</a>
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
						D: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
						E: <textarea rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea>
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
											<input type="radio" name="DA" value="4">D<br>
											<input type="radio" name="DA" value="5">E<br>

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
						A: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.10.0/24</textarea><br>
						B: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">172.16.1.0/22</textarea><br>
						C: <textarea  required pattern rows="1" cols="40" style="background-color: black;margin-top: 20px;">10.8.1.2/21</textarea><br>
						D: <textarea   rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.1.1/26</textarea>
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
	<div id="formCreateExam" style="display: none;">
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
								
								<button class="btnExam buttonExam" onclick="showformStructExam1()">Khởi tạo</button>
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
	<!-- form edit 1 -->
	 <div id="formEdit1" style="display: none;">
		<div class="editbox">
		<img src="images/login2.png" class="avatar">
			<h1 style="color: white">Chỉnh sửa tài khoản</h1>
			<form action="" ="/registration" method="" name ="vform">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Tên: </div>
					<div class="col-md-8 textEditIn4" ><input class="require" type="text" name="Ten" id="nameIn4" required pattern="" ></div>
				</div>
				
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Số Đt</div>
					<div class="col-md-8 textEditIn4"><input class="require" required type="text" name="SDT" id="phone"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">CMND</div>
					<div class="col-md-8 textEditIn4"><input required pattern="" class="require" type="text" name="CMND" id="cer"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Nơi công tác</div>
					<div class="col-md-8 textEditIn4"><input class="require" type="text" name="NCT" id="addr" required pattern=""></div>
				</div>
				<div class="index">
   						<div class="row">
   							<div class="col-md-10">
   								<button type="button" class="buttonIndex" onclick="hideEditIn4()">Hủy</button>
   							</div>
   							<div class="col-md-2">
   								<button type="button" class="buttonIndex" onclick="saveEditIn4()">Lưu</button>
   							</div>
   						</div>
   						
   					</div>
			</form>
       </div>
	</div>	
	<!-- CLose form edit -->
	<!--//banner -->

	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li onclick="showformIn4()"><a>THÔNG TIN</a></li>
				 			<li onclick="showformEdit()"><a>CHỈNH SỬA</a></li>
				 			<li onclick="showHome()"><a>QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="announce.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>

			<div class="col-md-9 mana_info_right">
				<div class="show_inf_student1">
					<!--<p> </p>-->

					<!--QUẢN LÝ ĐỀ THI-->
					<div role="tabpanel" class="tab-pane fade in active" id="home1" id="home" aria-labelledby="home-tab"  style="display: none;">
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/loc6.jpg" alt=""></a>
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
												<div class="read"><a onclick="showformDetail()" class="read-more">Chi tiết đề thi</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showScoreStudent()" class="fa fa-columns"></a>
													</li>
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
												<div class="read"><a onclick="showformDetail()" class="read-more">Chi tiết đề thi</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showScoreStudent()" class="fa fa-columns"></a>
													</li>
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
									<div class="tab_grid" id="addExamLocal"style="display: none;">
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
												<div class="read"><a onclick="showformDetail()" class="read-more">Chi tiết đề thi</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showScoreStudent()" class="fa fa-columns"></a>
													</li>
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
									<div class="btnAdd" onclick="showformStructExam()" style="text-align: center;">+</div>
					</div>
					<!-- form xem diem thi sinh -->
					<div id="formViewScrore" style="display: none;">
						<div class="container">
						<div class="tittle_head_w3ls">
								<h3 class="tittle2">Điểm thí sinh </h3>
						</div>
							<div class="inner_sec_grids_info_w3ls" style="position: relative;">
								<table id="example1">
									<thead>
									  	<tr><th class="site_name">Name</th><th>ID bài thi </th><th>Tên bài thi</th><th>Điểm</th></tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				<!-- dong form xem diem thi sing -->
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
					<div id="in4mation" style="display: block;">
					<div class="container-fluid bg-1 text-center ">
					    <h3 style="margin-top: 20px;">Who Am I?</h3>
					   <img  src="images/Cat.jpg" class="img-circle" alt="Cat" style="width: 200px;height: 200px;margin-top:20px;margin-bottom: 20px; ">
					    <div class="editIn4" id="iam">I'm Cao Nguyễn Minh</div>
  					</div>
  					<div style="margin-top: 40px;">
  						<nav class="navbar navbar-inverse">
  							<h2 style="margin-top: 17px; color: white ">Thông tin cá nhân</h2>
  						</nav>
  					</div>
  					<div class="information"  style="margin-left: 15%;">
  						<div class="row " style="color: white;">
  							<div class="col-md-3"><h3> Tên:</h3></div>
  							<div class="col-md-8 in4users" >
  								<div class="editIn4" id="nameLabel">
  									Cao Nguyễn Minh
  								</div>
  							</div>
  						</div>
  						<div class="row in4users1" style="color: white;">
  							<div class="col-md-3 "><h3>Số Đt:</h3></div>
  							<div class="col-md-8 in4users" >
  								<div class="editIn4" id="phoneLabel">
  									0976525xxx
  								</div>
  							</div>
  						</div>
  						<div class="row in4users1" style="color: white;">
  							<div class="col-md-3"><h3>CMND:</h3></div>
  							<div class="col-md-8 in4users" >
  								<div class="editIn4" id="cerLabel">
  									286524587
  								</div>

  							</div>
  						</div>
  						<div class="row in4users1" style="color: white;">
  							<div class="col-md-3">
  								<h3>Nơi công tác</h3>
  							</div>
  							<div class="col-md-8 in4users">
  								<div class="editIn4" id="addrLabel">
  									Bình Hưng Hòa - Việt Nam
  								</div>
  							</div>
  						</div>
   					</div>
   					<div class="index">
   						<div class="row">
   						</div>
   						
   					</div>
   				</div>

					<!-- close form information of student -->
					<!-- Form information of student -->
					<div id="formDetailExam"   style="display: none;">
			<h1 id="addExam" style="margin-top: 10px;">Chi tiết đề thi</h1>
			<div class="row">
				<div class="col-md-2 detai1 ">Mã đề thi</div>
				<div class="col-md-4 detai1 detai2">16110xxx</div>
				<div class="col-sm-2 detai1">Số lượng câu</div>
				<div class="col-sm-3 detai1 detai2">2</div>
			</div>
			<div class="row">
				<div class="col-md-2 detai1">Tên đề thi</div>
				<div class="col-md-9 detai1 detai2" ">Cấu trúc dữ liệu</div>
			</div>
			<div class="local" style="margin-top: 20px;">
				<div class="addExam-title">
					Bảng câu hỏi
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
					Câu 1: <textarea rows="2" cols="80" style="background-color: black;margin-top: 20px;">The IP address belong to subnetmask have address 255.255.255.224 is</textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.10.0/24</textarea><br>
						B: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">172.16.1.0/22</textarea><br>
						C: <textarea  required pattern rows="1" cols="40" style="background-color: black;margin-top: 20px;">10.8.1.2/21</textarea><br>
						D: <textarea   rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.1.1/26</textarea>
					</div>
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
					Câu 2: <textarea rows="2" cols="80" style="background-color: black;margin-top: 20px;">What the hell do you want</textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">I wanna have you</textarea><br>
						B: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">I don't like you</textarea><br>
						C: <textarea  required pattern rows="1" cols="40" style="background-color: black;margin-top: 20px;">The house and the sun to beautiful too look</textarea><br>
						D: <textarea   rows="1" cols="40" style="background-color: black;margin-top: 20px;">I dunno what to do</textarea>
					</div>
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
					Câu 3: <textarea rows="2" cols="80" style="background-color: black;margin-top: 20px;">To day, If it were rained,What would you do</textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;"> do Nothing</textarea><br>
						B: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">Hang out with friend</textarea><br>
						C: <textarea  required pattern rows="1" cols="40" style="background-color: black;margin-top: 20px;">Go to the coffee shop</textarea><br>
						D: <textarea   rows="1" cols="40" style="background-color: black;margin-top: 20px;">Sleep </textarea>
					</div>
				</div>
				
				<div style="margin-top: 20px; margin-bottom: 10px;">
					
					<div class="row" style="margin-top: 10px;">
						<div class="col-md-6">
							<button id="btnCancel" onclick="showHome()">Trở về</button>
						</div>

					</div>
				<div>
						
			</div>
					
			</div>
			</div>
	</div>
</div>
					<!-- dong form chi tiet de thi-->
					
					
					

					<!-- form sua thong tin -->
	
					<!-- dong form sua thong tin -->

					

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
  $(function(){
    $("#example1").dataTable({ // Search va  Show entry được dataTable trong jquery ho tro
  "aaData":[
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Sói con lạc lối","161101","Android","70"],
    ["Play from far home","161101","Android","70"],
    ["Phan Thị Thư","161102","IOS","20"],
    ["Nguyen Thị Thuận","161103","PHP","50"],
    ["Tran Thị Nhung","161104",".Net","60"],
    ["Hoang Minh","161105","C#","25"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"]


  ],
  "aoColumnDefs":[{
        "sTitle":"Tên thí sinh"
      , "aTargets": [ "site_name" ]
  }]
});
  })
  </script> <!-- dữ liệu của bảng điểm thí sinh -->

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