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
									<li>Chi Tiết sản phẩm</li>
								</ul>

							</div>
						</div>
					</div>
				</div>
				<!--breadcrumbs area end-->

				<!--product wrapper start-->
				<div class="product_details">
					<div class="row">
						<div class="col-lg-5 col-md-6">
							<div class="product_tab fix">
								
								<div class="tab-content produc_tab_c">
									<div class="tab-pane fade show active" id="p_tab1"
										role="tabpanel">
										<div class="modal_img">
											<img src="user/assets/img/product/${ctSanPham.img}" alt="">
											<div class="img_icone">
												<img src="user/assets/img/cart/span-new.png" alt="">
											</div>
										</div>
									</div>
									
									
								</div>

							</div>
						</div>
						<div class="col-lg-7 col-md-6">
							<div class="product_d_right">
								<h1>${sanPham.tenSP}</h1>
								<div class="product_ratting mb-10">
									<ul>
										<li><a href="#"><i class="fa fa-star"></i></a></li>
										<li><a href="#"><i class="fa fa-star"></i></a></li>
										<li><a href="#"><i class="fa fa-star"></i></a></li>
										<li><a href="#"><i class="fa fa-star"></i></a></li>
										<li><a href="#"><i class="fa fa-star"></i></a></li>
										<li><a href="#"> Write a review </a></li>
									</ul>
								</div>
								<div class="product_desc">
									<p>${ctSanPham.moTa}</p>
								</div>

								<div class="content_price mb-15">
									 <span>${ctSanPham.gia}</span>
								</div>
								<div class="box_quantity mb-20">
									<form action="#">
										<label>quantity</label> <input min="0" max="100" value="1"
											type="number">
									</form>
									<button type="submit">
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
									<a href="#" title="add to wishlist"><i class="fa fa-heart"
										aria-hidden="true"></i></a>
								</div>
								

								<div class="product_stock mb-20">
									<p>299 items</p>

								</div>
								<div class="wishlist-share">
									<h4>Share on:</h4>
									<ul>
										<li><a href="#"><i class="fa fa-rss"></i></a></li>
										<li><a href="#"><i class="fa fa-vimeo"></i></a></li>
										<li><a href="#"><i class="fa fa-tumblr"></i></a></li>
										<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!--product details end-->


				<!--product info start-->
				<div class="product_d_info">
					<div class="row">
						<div class="col-12">
							<div class="product_d_inner">
								<div class="product_info_button">
									<ul class="nav" role="tablist">
										<li><a class="active" data-toggle="tab" href="#info"
											role="tab" aria-controls="info" aria-selected="false">Thêm
												Thông tin info</a></li>
										<li><a data-toggle="tab" href="#sheet" role="tab"
											aria-controls="sheet" aria-selected="false">Bảng dữ liệu</a></li>
										<li><a data-toggle="tab" href="#reviews" role="tab"
											aria-controls="reviews" aria-selected="false">Đánh giá</a></li>
									</ul>
								</div>
								<div class="tab-content">
									<div class="tab-pane fade show active" id="info"
										role="tabpanel">
										<div class="product_info_content">
											<p>${ctSanPham.moTa}</p>
										</div>
									</div>

									<div class="tab-pane fade" id="sheet" role="tabpanel">
										<div class="product_d_table">
											<form action="#">
												<table>
													<tbody>
														<tr>
															<td class="first_child">Sáng tác</td>
															<td>${ctSanPham.ngayTao}</td>
														</tr>
														<tr>
															<td class="first_child">Kiểu dáng</td>
															<td>Nam</td>
														</tr>

													</tbody>
												</table>
											</form>
										</div>
									</div>
									<div class="tab-pane fade" id="reviews" role="tabpanel">
										<div class="product_info_content">
											<p>Thời trang đã tạo ra các bộ sưu tập được thiết kế đẹp
												mắt kể từ năm 2010. Thương hiệu này cung cấp các thiết kế nữ
												tính với những chiếc váy tách biệt và nổi bật đầy phong
												cách, từ đó đã phát triển thành một bộ sưu tập quần áo may
												sẵn đầy đủ, trong đó mỗi món đồ đều là một phần quan trọng
												trong tủ quần áo của phụ nữ. Kết quả? Vẻ ngoài mát mẻ, dễ
												dàng, sang trọng với sự thanh lịch trẻ trung và phong cách
												đặc trưng không thể nhầm lẫn. Tất cả những món đồ đẹp đẽ đều
												được sản xuất tại Ý và được sản xuất với sự chú ý lớn nhất.
												Giờ đây, Thời trang mở rộng sang nhiều loại phụ kiện bao gồm
												giày, mũ, thắt lưng và nhiều thứ khác!</p>
										</div>
										<div class="product_info_inner">
											<div class="product_ratting mb-10">
												<ul>
													<li><a href="#"><i class="fa fa-star"></i></a></li>
													<li><a href="#"><i class="fa fa-star"></i></a></li>
													<li><a href="#"><i class="fa fa-star"></i></a></li>
													<li><a href="#"><i class="fa fa-star"></i></a></li>
													<li><a href="#"><i class="fa fa-star"></i></a></li>
												</ul>
												<strong>hậu đề</strong>
												<p>09/07/2018</p>
											</div>
											<div class="product_demo">
												<strong>demo</strong>
												<p>Vậy là được rồi!</p>
											</div>
										</div>
										<div class="product_review_form">
											<form action="#">
												<h2>THÊM MỘT BÀI ĐÁNH GIÁ</h2>
												<p>Địa chỉ email của bạn sẽ không được công bố. Các trường bắt buộc được đánh dấu</p>
												<div class="row">
													<div class="col-12">
														<label for="review_comment">Đánh giá của bạn </label>
														<textarea name="comment" id="review_comment"></textarea>
													</div>
													<div class="col-lg-6 col-md-6">
														<label for="author">Tên</label> <input id="author"
															type="text">

													</div>
													<div class="col-lg-6 col-md-6">
														<label for="email">E-mail </label> <input id="email"
															type="text">
													</div>
												</div>
												<button type="submit">Submit</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--product info end-->


				<!--new product area start-->
				<div class="new_product_area product_page">
					<div class="row">
						<div class="col-12">
							<div class="block_title">
								<h3>DANH MỤC SẢN PHẨM KHÁC:</h3>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="single_p_active owl-carousel">
							<div class="col-lg-3">
								<div class="single_product">
									<div class="product_thumb">
										<a href="single-product.html"><img
											src="user/assets/img/product/product1.jpg" alt=""></a>
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
											src="user/assets/img/product/product2.jpg" alt=""></a>
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
										<span class="product_price">$40.00</span>
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
											src="user/assets/img/product/product3.jpg" alt=""></a>
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
										<span class="product_price">$60.00</span>
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
											src="user/assets/img/product/product4.jpg" alt=""></a>
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
											src="user/assets/img/product/product6.jpg" alt=""></a>
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
				<!--new product area start-->



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
																src="user/assets/img/product/product9.jpg" alt=""></a>
														</div>
													</div>
													<div class="tab-pane fade" id="tab3" role="tabpanel">
														<div class="modal_tab_img">
															<a href="#"><img
																src="user/assets/img/product/product15.jpg" alt=""></a>
														</div>
													</div>
												</div>

											</div>
										</div>
										<div class="col-lg-7 col-md-7 col-sm-12">
											<div class="modal_right">
												<div class="modal_title mb-10">
													<h2>Handbag feugiat</h2>
												</div>
												<div class="modal_price mb-10">
													<span class="new_price">$64.99</span> <span
														class="old_price">$78.99</span>
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

			</div>
		</div>
	</div>

	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/js.jsp"%>

</body>
</html>