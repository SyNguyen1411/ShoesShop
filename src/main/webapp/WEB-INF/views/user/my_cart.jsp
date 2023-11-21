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
									<li>giỏ hàng</li>
								</ul>

							</div>
						</div>
					</div>
				</div>
				<!--breadcrumbs area end-->

				<!--shopping cart area start -->
				<div class="shopping_cart_area">
					<form action="#">
						<div class="row">
							<div class="col-12">
								<div class="table_desc">
									<div class="cart_page table-responsive">
										<table>
											<thead>
												<tr>
													<th class="product_remove">Xóa</th>
													<th class="product_thumb">Ảnh</th>
													<th class="product_name">Sản phẩm</th>
													<th class="product-price">Gía</th>
													<th class="product_quantity">Số lượng</th>
													<th class="product_total">Tổng</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="product_remove"><a href="#"><i
															class="fa fa-trash-o"></i></a></td>
													<td class="product_thumb"><a href="#"><img
															src="user/assets/img/cart/cart17.jpg" alt=""></a></td>
													<td class="product_name"><a href="#">c</a></td>
													<td class="product-price">65.00</td>
													<td class="product_quantity"><input min="0" max="100"
														value="1" type="number"></td>
													<td class="product_total">130.00</td>


												</tr>

												<tr>
													<td class="product_remove"><a href="#"><i
															class="fa fa-trash-o"></i></a></td>
													<td class="product_thumb"><a href="#"><img
															src="user/assets/img/cart/cart18.jpg" alt=""></a></td>
													<td class="product_name"><a href="#">b</a></td>
													<td class="product-price">90.00</td>
													<td class="product_quantity"><input min="0" max="100"
														value="1" type="number"></td>
													<td class="product_total">180.00</td>


												</tr>
												<tr>
													<td class="product_remove"><a href="#"><i
															class="fa fa-trash-o"></i></a></td>
													<td class="product_thumb"><a href="#"><img
															src="user/assets/img/cart/cart19.jpg" alt=""></a></td>
													<td class="product_name"><a href="#">a</a></td>
													<td class="product-price">80.00</td>
													<td class="product_quantity"><input min="0" max="100"
														value="1" type="number"></td>
													<td class="product_total">160.00</td>


												</tr>

											</tbody>
										</table>
									</div>
									<div class="cart_submit">
										<button type="submit">cẬP NHẬT GIỎ HÀNG</button>
									</div>
								</div>
							</div>
						</div>
						<!--coupon code area start-->
						<div class="coupon_area">
							<div class="row">
								<div class="col-lg-6 col-md-6">

									<%-- 
									<div class="coupon_code">
										<h3>Coupon</h3>
										<div class="coupon_inner">
											<p>Enter your coupon code if you have one.</p>
											<input placeholder="Coupon code" type="text">
											<button type="submit">Apply coupon</button>
										</div>
									</div>
									 --%>

								</div>
								<div class="col-lg-6 col-md-6">
									<div class="coupon_code">
										<h3>TỔNG SỐ GIỎ HÀNG</h3>
										<div class="coupon_inner">
											<div class="cart_subtotal">
												<p>Tổng phụ</p>
												<p class="cart_amount">215.00</p>
											</div>
											<div class="cart_subtotal ">
												<p>Đang chuyển hàng</p>
												<p class="cart_amount">
													<span>Giá cố định:</span> 255.00
												</p>
											</div>
											<a href="#">Tính toán vận chuyển</a>

											<div class="cart_subtotal">
												<p>Tổng cộng</p>
												<p class="cart_amount">215.00</p>
											</div>
											<div class="checkout_btn">
												<a href="#">Tiến hành kiểm tra</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--coupon code area end-->
					</form>
				</div>
				<!--shopping cart area end -->




			</div>
		</div>
	</div>




	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/js.jsp"%>
</body>
</html>