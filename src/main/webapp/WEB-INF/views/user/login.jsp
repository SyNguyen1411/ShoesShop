<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@ include file="/common/user/head.jsp"%>
</head>
<body>

<%@ include file="/common/user/header.jsp"%>
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area">
		<div class="row">
			<div class="col-12">
				<div class="breadcrumb_content">
					<ul>
						<li><a href="index.html">home</a></li>
						<li><i class="fa fa-angle-right"></i></li>
						<li>Đăng nhập</li>
					</ul>

				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->

	<!-- customer login start -->
	<div class="customer_login">
		<div class="row">
			<div class="col-lg-3 col-md-3"></div>
			<!--login area start-->
			<div class="col-lg-6 col-md-6">
				<div class="account_form">
					<h2>login</h2>
					<form action="/login" method="post">
						<p>
							<label for="username">Username or email <span>*</span></label> <input
								type="text" id="username" name="username" required>
						</p>
						<p>
							<label for="matKhau">Password <span>*</span></label> <input
								type="password" id="matKhau" name="matKhau" required>
						</p>
						<div class="login_submit">
							<button type="submit">Login</button>
							<label for="remember"> <input id="remember"
								type="checkbox" name="rememberMe"> Remember me
							</label> <a href="#">Lost your password?</a>
						</div>
					</form>





				</div>
			</div>
			<!--login area start-->
			<div class="col-lg-3 col-md-3"></div>
		</div>
	</div>
	<!-- customer login end -->


	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/js.jsp"%>
</body>
</html>