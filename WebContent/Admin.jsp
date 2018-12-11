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
                        <a class="navbar-brand" href="index.jsp">
                            <h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
                        </a>
                    </div>
                    <div class="dropdown">
                        <img src="images/ab.png" width="50px;" height="50px;">
                        <button class="dropbtn">${UserLogin}</button>
                        <span class="fa fa-sort-desc" style="color: #fff;"></span>
                        <div class="dropdown-content">
                            <a href="Admin.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
                            <a href="ThemThongBao.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
                            <a href="home"><span class="fa fa-sign-out"></span> Đăng xuất</a>
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
                        <li><a href="Admin.jsp">THÔNG TIN</a></li>
                        <li><a href="Quanlytaikhoan.jsp">QUẢN LÝ TÀI KHOẢN</a></li>
                        <li><a href="#">QUẢN LÝ BÀI THI</a></li>
                        <li><a href="QLThongBao.jsp">THÔNG BÁO</a></li>
                        <li><a href="CapQuyen.jsp">PHÂN QUYỀN</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9 job_info_right">
                <div class="inf_exam">

                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                        <div class="tab_grid">
                            <div class="col-sm-3 loc_1">
                                <h2 style=" text-align: center;color:brown ">avatar</h2><br>
                                <a href="#"><img src="images/pf3.jpg" alt="" ></a>
                            </div>
                            <div class="col-sm-9 loc_1">
                                <h1 style="text-align:center;color:burlywood">THÔNG TIN CÁ NHÂN</h1><br>
                                <div style="color:chocolate;margin-left: 100px">
                                <label>Tên Đăng Nhập:   MaDuKic</label><br><br>
                                <label>Họ Tên:   LucaModric</label><br><br>
                                <label>Số điện thoại:   034754457</label><br><br>
                                <label>Số CMND:   241003525</label><br><br>
                                <label>Nơi Công Tác:   Hà Nội</label><br><br>
                                <label>Email:   MaDuKic@gmail.com</label>  
                                </div>
                          </div>
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

    <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;">
        </span></a>
        <h1>${loi }</h1>
</body>

</html>