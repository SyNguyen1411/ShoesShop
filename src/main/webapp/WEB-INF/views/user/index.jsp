<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/user/head.jsp"%>
</head>
<body>
	<%@ include file="/common/user/header.jsp"%>

	<!--pos home section-->
	<div class="pos_home_section">
		<div class="row">
			<!--banner slider start-->
			<div class="col-12">
				<div class="banner_slider slider_two">
					<div class="slider_active owl-carousel">
						<div class="single_slider"
							style="background-image: url(user/assets/img/slider/slide1.PNG)">
							<div class="slider_content">
								<div class="slider_content_inner">
									<h1>bca</h1>
									<p>dâdafaff</p>
									<a href="#">shop now</a>
								</div>
							</div>
						</div>
						<div class="single_slider"
							style="background-image: url(/user/assets/img/slider/slider2.PNG)">
							<div class="slider_content">
								<div class="slider_content_inner">
									<h1>a</h1>
									<p>adadada</p>
									<a href="#">show</a>
								</div>
							</div>
						</div>
						<div class="single_slider"
							style="background-image: url(user/assets/img/slider/slider3.PNG)">
							<div class="slider_content">
								<div class="slider_content_inner">
									<h1>bafa</h1>
									<p>ầgafasfafafafaf</p>
									<a href="#">show</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--banner slider start-->
			</div>
		</div>
		<!--new product area start-->
		<div class="new_product_area product_two">
			<div class="row">
				<div class="col-12">
					<div class="block_title">
						<h3>Sản phẩm mới</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="single_p_active owl-carousel">
					<c:forEach items="${spHome.content}" var="sanPham">
						<c:if test="${!sanPham.hidden}">
							<div class="col-lg-3">
								<div class="single_product">
									<div class="product_thumb">
										<a href="/ctSanPham/${sanPham.idSP}"><img
											src="<c:out value='images/products/${sanPham.img}' />" alt="" /></a>
										<div class="img_icone">
											<img src="user/assets/img/cart/span-new.png" alt="">
										</div>
										<div class="product_action">
											<a href="#"> <i class="fa fa-shopping-cart"></i> Thêm sản
												phẩm
											</a>
										</div>
									</div>
									<div class="product_content">
										<span class="product_price">${sanPham.gia}</span>
										<h3 class="product_title">
											<a href="/ctSanPham/${sanPham.idSP}">${sanPham.tenSP}</a>
										</h3>
									</div>
									<div class="product_info">
										<ul>
											<li><a href="#" title="Thêm vào danh sách yêu thích">Thêm
													sản phẩm yêu thích</a></li>
											<li><a href="#" data-toggle="modal"
												data-target="#modal_box" title="Xem nhanh">Xem sản phẩm</a></li>
										</ul>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>


				</div>
			</div>




			<!-- Giao diện phân trang -->
			<div class="pagination_style">
				<div class="item_page">
					<form action="#">
						<label for="page_select">Sản phẩm theo trang</label> <select
							id="page_select" onchange="changePage()">
							<c:forEach var="i" begin="1" end="${spHome.totalPages}">
								<option value="${i}" ${i == spHome.number + 1 ? 'selected' : ''}>${i}</option>
							</c:forEach>
						</select>
					</form>
				</div>
				<div class="page_number">
					<span>Trang: </span>
					<ul>
						<c:if test="${spHome.hasPrevious()}">
							<li><a href="?page=${spHome.number - 1}">«</a></li>
						</c:if>
						<li class="current_number">${spHome.number + 1}</li>
						<c:if test="${spHome.hasNext()}">
							<li><a href="?page=${spHome.number + 2}">»</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- Giao diện phân trang end -->

			<!-- JavaScript để xử lý chuyển trang -->
			<script>
				function changePage() {
					var selectedPage = document.getElementById("page_select").value;
					window.location.href = "?page=" + (selectedPage - 1); // Chuyển đến trang mới khi thay đổi
				}
			</script>

		</div>
		<!--new product area start-->

		<!--banner area start-->
		<div class="banner_area banner_two">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single_banner">
						<a href="#"><img src="user/assets/img/banner/banner8.jpg"
							alt=""></a>
						<div class="banner_title">
							<p>
								Up to <span> 40%</span> off
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_banner">
						<a href="#"><img src="/user/assets/img/banner/banner11.jpg"
							alt=""></a>
						<div class="banner_title title_2">
							<p>
								sale off <span> 30%</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_banner">
						<a href="#"><img src="user/assets/img/banner/banner13.jpg"
							alt=""></a>
						<div class="banner_title title_3">
							<p>
								sale off <span> 30%</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--banner area end-->

		<!--featured product area start-->
		<div class="new_product_area product_two">
			<div class="row">
				<div class="col-12">
					<div class="block_title">
						<h3>featured Products</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="single_p_active owl-carousel">
					<div class="col-lg-3">
						<div class="single_product">
							<div class="product_thumb">
								<a href="single-product.html"><img
									src="user/assets/img/product/product7.jpg" alt=""></a>
								<div class="img_icone">
									<img src="user/assets/img/cart/span-new.png" alt="">
								</div>
								<div class="product_action">
									<a href="#"> <i class="fa fa-shopping-cart"></i> Add to
										cart
									</a>
								</div>
							</div>
							<div class="product_content">
								<span class="product_price">$50.00</span>
								<h3 class="product_title">
									<a href="single-product.html">Curabitur sodales</a>
								</h3>
							</div>
							<div class="product_info">
								<ul>
									<li><a href="#" title=" Add to Wishlist ">Add to
											Wishlist</a></li>
									<li><a href="#" data-toggle="modal"
										data-target="#modal_box" title="Quick view">View Detail</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="single_product">
							<div class="product_thumb">
								<a href="single-product.html"><img
									src="user/assets/img/product/product8.jpg" alt=""></a>
								<div class="hot_img">
									<img src="user/assets/img/cart/span-hot.png" alt="">
								</div>
								<div class="product_action">
									<a href="#"> <i class="fa fa-shopping-cart"></i> Add to
										cart
									</a>
								</div>
							</div>
							<div class="product_content">
								<span class="product_price">40.00</span>
								<h3 class="product_title">
									<a href="single-product.html">Quisque ornare dui</a>
								</h3>
							</div>
							<div class="product_info">
								<ul>
									<li><a href="#" title=" Add to Wishlist ">Add to
											Wishlist</a></li>
									<li><a href="#" data-toggle="modal"
										data-target="#modal_box" title="Quick view">View Detail</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="single_product">
							<div class="product_thumb">
								<a href="single-product.html"><img
									src="user/assets/img/product/product9.jpg" alt=""></a>
								<div class="img_icone">
									<img src="user/assets/img/cart/span-new.png" alt="">
								</div>
								<div class="product_action">
									<a href="#"> <i class="fa fa-shopping-cart"></i> Add to
										cart
									</a>
								</div>
							</div>
							<div class="product_content">
								<span class="product_price">60.00</span>
								<h3 class="product_title">
									<a href="single-product.html">Sed non turpiss</a>
								</h3>
							</div>
							<div class="product_info">
								<ul>
									<li><a href="#" title=" Add to Wishlist ">Add to
											Wishlist</a></li>
									<li><a href="#" data-toggle="modal"
										data-target="#modal_box" title="Quick view">View Detail</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="single_product">
							<div class="product_thumb">
								<a href="single-product.html"><img
									src="user/assets/img/product/product3.jpg" alt=""></a>
								<div class="hot_img">
									<img src="user/assets/img/cart/span-hot.png" alt="">
								</div>
								<div class="product_action">
									<a href="#"> <i class="fa fa-shopping-cart"></i> Add to
										cart
									</a>
								</div>
							</div>
							<div class="product_content">
								<span class="product_price">$65.00</span>
								<h3 class="product_title">
									<a href="single-product.html">Duis convallis</a>
								</h3>
							</div>
							<div class="product_info">
								<ul>
									<li><a href="#" title=" Add to Wishlist ">Add to
											Wishlist</a></li>
									<li><a href="#" data-toggle="modal"
										data-target="#modal_box" title="Quick view">View Detail</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="single_product">
							<div class="product_thumb">
								<a href="single-product.html"><img
									src="user/assets/img/product/product2.jpg" alt=""></a>
								<div class="img_icone">
									<img src="user/assets/img/cart/span-new.png" alt="">
								</div>
								<div class="product_action">
									<a href="#"> <i class="fa fa-shopping-cart"></i> Add to
										cart
									</a>
								</div>
							</div>
							<div class="product_content">
								<span class="product_price">$50.00</span>
								<h3 class="product_title">
									<a href="single-product.html">Curabitur sodales</a>
								</h3>
							</div>
							<div class="product_info">
								<ul>
									<li><a href="#" title=" Add to Wishlist ">Add to
											Wishlist</a></li>
									<li><a href="#" data-toggle="modal"
										data-target="#modal_box" title="Quick view">View Detail</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--featured product area start-->

	</div>

	<!-- modal area start -->
	<div class="modal fade" id="modal_box" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal_body">
					<div class="container">
						<div class="row">
							<div class="col-lg-5 col-md-5 col-sm-12">
								<div class="modal_tab">
									<div class="tab-content" id="pills-tabContent">
										<div class="tab-pane fade show active" id="tab1"
											role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="user/assets/img/product/product13.jpg" alt=""></a>
											</div>
										</div>
										<div class="tab-pane fade" id="tab2" role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="user/assets/img/product/product14.jpg" alt=""></a>
											</div>
										</div>
										<div class="tab-pane fade" id="tab3" role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="user/assets/img/product/product15.jpg" alt=""></a>
											</div>
										</div>
									</div>
									<%-- <div class="modal_tab_button">
										<ul class="nav product_navactive" role="tablist">
											<li><a class="nav-link active" data-toggle="tab"
												href="#tab1" role="tab" aria-controls="tab1"
												aria-selected="false"><img
													src="user/assets/img/cart/cart17.jpg" alt=""></a></li>
											<li><a class="nav-link" data-toggle="tab" href="#tab2"
												role="tab" aria-controls="tab2" aria-selected="false"><img
													src="user/assets/img/cart/cart18.jpg" alt=""></a></li>
											<li><a class="nav-link button_three" data-toggle="tab"
												href="#tab3" role="tab" aria-controls="tab3"
												aria-selected="false"><img
													src="user/assets/img/cart/cart19.jpg" alt=""></a></li>
										</ul>
									</div> --%>
								</div>
							</div>
							<div class="col-lg-7 col-md-7 col-sm-12">
								<div class="modal_right">
									<div class="modal_title mb-10">
										<h2>Dép</h2>
									</div>
									<div class="modal_price mb-10">
										<span class="new_price">64.99</span> <span class="old_price">78.99</span>
									</div>
									<div class="modal_content mb-10">
										<p>Short-sleeved blouse with feminine draped sleeve
											detail.</p>
									</div>
									<div class="modal_size mb-15">
										<h2>size</h2>
										<ul>
											<li><a href="#">s</a></li>
											<li><a href="#">m</a></li>
											<li><a href="#">l</a></li>
											<li><a href="#">xl</a></li>
											<li><a href="#">xxl</a></li>
										</ul>
									</div>
									<div class="modal_add_to_cart mb-15">
										<form action="#">
											<input min="0" max="100" step="2" value="1" type="number">
											<button type="submit">add to cart</button>
										</form>
									</div>
									<div class="modal_description mb-15">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam,</p>
									</div>
									<div class="modal_social">
										<h2>Share this product</h2>
										<ul>
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- modal area end -->



	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/js.jsp"%>
</body>
</html>
