<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<%@ include file="/common/user/head.jsp"%>
</head>
<body>
	<!--pos page start-->
	<div class="pos_page">
		<div class="container">
			<!--pos page inner-->
			<div class="pos_page_inner">

				<%@ include file="/common/user/header.jsp"%>
				<!--breadcrumbs area start-->
				<div class="breadcrumbs_area">
					<div class="row">
						<div class="col-12">
							<div class="breadcrumb_content">
								<ul>
									<li><a href="index.html">home</a></li>
									<li><i class="fa fa-angle-right"></i></li>
									<li>đăng ký</li>
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
						<!--register area start-->
						<div class="col-lg-6 col-md-6">
							<div class="account_form register">
								<h2>Register</h2>
								<form action="/register" method="post">
									<p>
										<label>Username <span>*</span></label> <input type="text"
											id="username" name="username" required>
									</p>
									<p>
										<label>Email address <span>*</span></label> <input
											type="email" id="email" name="email" required>
									</p>
									<p>
										<label>Passwords <span>*</span></label> <input type="password"
											id="matKhau" name="matKhau" required>
									</p>
									<p>
										<label>Confirm Password <span>*</span></label> <input
											type="password" id="CPMatKhau" name="CPMatKhau" required>
									</p>
									<div class="login_submit">
										<button type="submit" id="registerButton">Register</button>
									</div>
								</form>
							</div>
						</div>
						<!--register area end-->
						<div class="col-lg-3 col-md-3"></div>
					</div>
				</div>
				<!-- customer login end -->
			</div>
		</div>
	</div>

	<script>
		// Xác nhận mật khẩu và mật khẩu xác nhận giống nhau bằng JavaScript
		document
				.getElementById("registerButton")
				.addEventListener(
						"click",
						function(event) {
							var matKhau = document.getElementById("matKhau").value;
							var CPMatKhau = document
									.getElementById("CPMatKhau").value;
							if (matKhau !== CPMatKhau) {
								alert("Mật khẩu và xác nhận mật khẩu không giống nhau.");
								event.preventDefault(); // Ngăn chặn việc gửi biểu mẫu nếu mật khẩu không trùng khớp
							}
						});
	</script>

	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/js.jsp"%>
</body>
</html>