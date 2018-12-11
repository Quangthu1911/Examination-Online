<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>QUYỀN</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="admin.css">
    <link href="css/font-awesome.css" rel="stylesheet">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
</head>
<script type="text/javascript">

    $(document).ready(function () {

        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#formThemThongBao").validate({
            rules: {

                TenThongBao: "required",
                NoiDung: {
                    required: true,
                    maxlength: 255
                }
            },
            messages: {
                TenThongBao: "Vui lòng nhập tên thông báo",
                NoiDung: {
                    required: "Vui lòng nhập nội dung",
                    maxlength: "Nội dung tối đa 255 kí tự"

                }
            }
        });
    });
</script>

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
                            <a href="TkAdmin.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
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
            <div class="col-md-9 ">
                <div>
                    <div>
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="text-align:center">Cấp Quyền</div>
                            <div class="panel-body">
                                <table class="table" id="TableCQ" >
                                    <thead>
                                        <tr id="tdcq">
                                            <th>STT</th>
                                            <th>Tên Thao Tác</th>
                                            <th>Giáo Viên</th>
                                            <th>Học Sinh</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Quản Lý Bài Thi</td>
                                            <td><input type="checkbox" name="vehicle" value="Bike"></td>
                                            <td><input type="checkbox" name="vehicle" value="Bike"></td>                                        
                                        </tr>
                                        <tr>
                                                <td>2</td>
                                                <td>Tham Gia Bình Luận</td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td> 
                                            

                                        </tr>
                                        <tr>
                                                <td>3</td>
                                                <td>Quản Lý Điểm Thi</td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td> 
                                            

                                        </tr>
                                        <tr>
                                                <td>4</td>
                                                <td>Quản Lý Ngân Hàng Đề Thi</td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td> 
                                            

                                        </tr>
                                        <tr>
                                                <td>5</td>
                                                <td>Tạo đề Thi</td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td>
                                                <td><input type="checkbox" name="vehicle" value="Bike"></td>                                       
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="panel-footer"></div>
                            <button type="submit" class="btn btn-default" style="margin-left:400px;color:crimson;background-color: chartreuse">Submit</button>
                        </div>
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
                            <h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination
                                    Online</label></h2>
                        </a>
                        <p>© 2017 Soft. All rights reserved | Design by <a href="#">Group
                                11</a></p>
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

    <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;">
        </span></a>

</body>

</html>