<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>DANH SACH TÀI KHOẢN GIÁO VIÊN</title>
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

</head>

<body>
    <script type="application/x-javascript">
            function delete_table()
            {
                document.getElementById("TableGV").deleteRow(1);
            }
        </script>
    <script>
        $(document).ready(function () {
            $("#timkiem").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#TableGV tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
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
            <div class="col-md-9">
                <div>
                    <div>
                        <input class="form-control" id="timkiem" type="text" placeholder="Search.." style="width:50%">
                        <a href="CapQuyen.html"> <button style="float:right" type="button" class="btn btn-primary">
                                Cấp quyền</button></a><br> <br>

                        <div class="panel panel-primary">
                            <div class="panel-heading" style="text-align:center">DANH SÁCH TÀI KHOẢN GIÁO VIÊN</div>
                            <div class="panel-body">
                                <table class="table" id="TableGV">
                                    <thead>
                                        <tr>
                                            <th>Tên Đăng Nhập</th>
                                            <th>Mật Khẩu</th>
                                            <th>Email</th>
                                            <th>SDT</th>
                                            <th>CMND</th>
                                            <th>Nơi Công Tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>nguyenvanA</td>
                                            <td>******</td>
                                            <td>nguyenvanA@gmail.com</td>
                                            <td>039999222</td>
                                            <td>240866585</td>
                                            <td>Hồ Chí Minh </td>
                                        </tr>
                                        <tr>
                                            <td>nguyenvanB</td>
                                            <td>******</td>
                                            <td>nguyenvanB@gmail.com</td>
                                            <td>039999221</td>
                                            <td>240866535</td>
                                            <td>Hà Nội</td>

                                        </tr>
                                        <tr>
                                            <td>nguyenvanC</td>
                                            <td>******</td>
                                            <td>nguyenvanC@gmail.com</td>
                                            <td>039999221</td>
                                            <td>240866535</td>
                                            <td>Vũng Tàu</td>

                                        </tr>
                                        <tr>
                                            <td>nguyenvanD</td>
                                            <td>******</td>
                                            <td>nguyenvanC@gmail.com</td>
                                            <td>039999221</td>
                                            <td>240866535</td>
                                            <td>Vũng Tàu</td>

                                        </tr>
                                        <tr>
                                            <td>nguyenvanE</td>
                                            <td>******</td>
                                            <td>nguyenvanC@gmail.com</td>
                                            <td>039999221</td>
                                            <td>240866535</td>
                                            <td>Vũng Tàu</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="panel-footer"></div>
                            <button onclick="delete_table()" id="deletetable">
                                <span class="glyphicon glyphicon-trash"></span> Delete</button><br>
                            <ul class="pagination" style="margin-left:300px">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                            </ul>

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