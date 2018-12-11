<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>CHỈNH SỬA TÀI KHOẢN</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="admin.css">
    <link href="css/font-awesome.css" rel="stylesheet">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script> 
</head>
<script type="text/javascript">

    $(document).ready(function () {

        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#formCS").validate({
            rules: {

                UserLogin: "required",
                PasswordOld: "required",
                PasswordNew: {
                    required: true,
                    minlength:6
                }
            },
            messages: {
                UserLogin: "Vui lòng nhập tên đăng nhập",
                PasswordOld: "Vui lòng nhập mật khẩu hiện tại",
                PasswordNew: {
                    required: "Vui lòng nhập mật khẩu",
                    minlength: "Tối thiểu 6 kí tự"

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
            <div class="col-md-9 job_info_right" id="KhungChinhSua">
                <h3 id="theh3">CHỈNH SỬA TÀI KHOẢN </h3>
                <br><br>
                <form class="form-horizontal" action="#" id="formCS">
                    <div class="form-group">
                        <label class="control-label col-sm-2">UserLogin:</label>
                        <div class="col-sm-5">
                            <input name="UserLogin" class="form-control" placeholder="Enter UserLogin" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Password:</label>
                        <div class="col-sm-5">
                            <input name="PasswordOld" class="form-control" placeholder="Enter Password Old" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">PasswordNew:</label>
                        <div class="col-sm-5">
                            <input name="PasswordNew" class="form-control" placeholder="Enter Password New" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button  type="submit" class="btn btn-default" id="submit" style="color:crimson;background-color: chartreuse" >Submit</button>
                        </div>
                    </div>
                </form>
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

    <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;">
        </span></a>

</body>

</html>