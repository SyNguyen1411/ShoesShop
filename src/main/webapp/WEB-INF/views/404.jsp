<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404</title>
<%@ include file="/common/user/head.jsp"%>
</head>
<body>
	<%@ include file="/common/user/header.jsp"%>
	<!--error section area start-->
	<div class="error_section">
		<div class="row">
			<div class="col-12">
				<div class="error_form">
					<h1>404</h1>
					<h2>Opps! PAGE NOT BE FOUND</h2>
					<p>
						Sorry but the page you are looking for does not exist, have been<br>
						removed, name changed or is temporarity unavailable.
					</p>
					<form action="#">
						<input placeholder="Search..." type="text">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
					<a href="index.html">Back to home page</a>
				</div>
			</div>
		</div>
	</div>
	<!--error section area end-->
	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/js.jsp"%>
</body>
</html>