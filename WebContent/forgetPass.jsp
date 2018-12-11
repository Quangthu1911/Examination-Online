
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<script type="text/javascript">
		function checkForgetPassword()
		{
			var s = document.getElementById('passNew').value;
			var s1=document.getElementById('rePassNew').value;
			if(s===s1)
				alert("succes !");
				
			else
				alert("fail !");
		}
	</script>
</head>
<body>
<div class="forget_password">
			<img src="images/login2.png" class="avatar">
			<h1>FORGET PASSWORD</h1>
			<form class="forget_pass" action="">
				<div class="row" >
					<div class="col-md-4"><p>Password new:</p></div>
					<div class="col-md-8"><input type="password" name="pass" placeholder="Pass new:" id="passNew"></div>
				</div>
				<div class="row">
					<div class="col-md-4"><p>Re Password new:</p></div>
					<div class="col-md-8"><input type="password" name="pass" placeholder="Re pas new:" id="rePassNew"></div>
				</div>
				<div class="row">
					<div class="col-md-4"><p>Code:</p></div>
					<div class="col-md-8"><input type="text" name="name" placeholder="Mã code" class="control" required autofocus></div>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-8" style="margin-left: 350px;">
						<button onclick="checkForgetPassword()">Finish</button>
					</div>
				</div>
			</form>
       </div>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>