<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
									<li>Thông tin</li>
								</ul>

							</div>
						</div>
					</div>
				</div>
				<!--breadcrumbs area end-->

				<!--contact area start-->
				<div class="contact_area">
					<div class="row">
						<div class="col-lg-6 col-md-12">
							<div class="contact_message">
								<h3>Tell us your project</h3>
								<form id="contact-form" method="POST" action="assets/mail.php">
									<div class="row">
										<div class="col-lg-6">
											<input name="name" placeholder="Name *" type="text">
										</div>
										<div class="col-lg-6">
											<input name="email" placeholder="Email *" type="email">
										</div>
										<div class="col-lg-6">
											<input name="subject" placeholder="Subject *" type="text">
										</div>
										<div class="col-lg-6">
											<input name="phone" placeholder="Phone *" type="text">
										</div>

										<div class="col-12">
											<div class="contact_textarea">
												<textarea placeholder="Message *" name="message"
													class="form-control2"></textarea>
											</div>
											<button type="submit">Send Message</button>
										</div>
										<div class="col-12">
											<p class="form-messege">
										</div>
									</div>
								</form>
							</div>
						</div>

						<div class="col-lg-6 col-md-12">
							<div class="contact_message contact_info">
								<h3>contact us</h3>
								<p>Claritas est etiam processus dynamicus, qui sequitur
									mutationem consuetudium lectorum. Mirum est notare quam littera
									gothica, quam nunc putamus parum claram anteposuerit litterarum
									formas human.</p>
								<ul>
									<li><i class="fa fa-fax"></i> Address : No 40 Baria Sreet
										133/2 NewYork City</li>
									<li><i class="fa fa-phone"></i> <a href="#">Infor@roadthemes.com</a></li>
									<li><i class="fa fa-envelope-o"></i> 0(1234) 567 890</li>
								</ul>
								<h3>
									<strong>Working hours</strong>
								</h3>
								<p>
									<strong>Monday – Saturday</strong>: 08AM – 22PM
								</p>
							</div>
						</div>
					</div>
				</div>

				<!--contact area end-->

				<!--contact map start-->
				<div class="contact_map">
					<div class="row">
						<div class="col-12">
							<iframe src="https://www.google.com/maps/embed?pb" width="500"
								height="450" style="border: 0" allowfullscreen=""></iframe>
						</div>
					</div>
				</div>
				<!--contact map end-->

			</div>
		</div>
	</div>
	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/js.jsp"%>
</body>
</html>