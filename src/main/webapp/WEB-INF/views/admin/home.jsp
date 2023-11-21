<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/common/admin/head.jsp"%>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake" src="/admin/dist/img/AdminLTELogo.jpg"
				alt="AdminLTELogo" height="60" width="60">
		</div>

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>

			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>
				<!-- Notifications Dropdown Menu -->

				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-controlsidebar-slide="true"
					href="#" role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="/admin" class="brand-link"> <img
				src="/admin/dist/img/AdminLTELogo.jpg" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">${sessionScope.user.tenND}</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">


				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item menu-open"><a href="/admin"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>Home</p>
						</a></li>


						<li class="nav-item "><a href="#" class="nav-link "> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Sản phẩm <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link "> <i class="far fa-circle nav-icon"></i>
										<p>Tổng quan</p>
								</a></li>
								<li class="nav-item"><a href="/adminSp"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Thêm mới sản phẩm</p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Hóa đơn</p>
								</a></li>
							</ul></li>


						<li class="nav-item "><a href="#" class="nav-link "> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Thống kê <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link "> <i class="far fa-circle nav-icon"></i>
										<p>Doanh thu</p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Tốp sản phẩm bán chạy</p>
								</a></li>
							</ul></li>


					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Home</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->




			<!-- Main content -->
			<section class="content">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Thông tin sản phẩm</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>Tên</th>
									<th>Giá</th>
									<th>Hình</th>
									<th>Mô tả</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="sanPham" items="${spHome}">
									<tr>
										<td><c:out value="${sanPham.idSP}" /></td>
										<td><c:out value="${sanPham.tenSP}" /></td>
										<td><c:out value="${sanPham.gia}" /></td>
										<td><img
											src="${pageContext.request.contextPath}/images/products/${sanPham.img}" alt="lỗi" />
										<td><c:out value="${sanPham.moTa}" /></td>

									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>ID</th>
									<th>Tên</th>
									<th>Giá</th>
									<th>Hình</th>
									<th>Mô tả</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.card-body -->
				</div>

				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Thông tin hóa đơn</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example2" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID_DonHang</th>
									<th>Tên khách hàng</th>
									<th>Tên sản phẩm</th>
									<th>Giá</th>
									<th>Hình</th>
									<th>Địa chỉ</th>
									<th>Số điện thoại</th>
									<th>Số lượng</th>
									<th>Tổng tiền</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Demo</td>
									<td>GIÀY ghi chù</td>
									<td>1 tỏi</td>
									<td><a href=""><img
											src="user/assets/img/product/product1.jpg" alt=""></a></td>
									<td>tp.hcm</td>
									<td>042424252</td>
									<td>3</td>
									<td>30 tỏi</td>
								</tr>


							</tbody>
							<tfoot>
								<tr>
									<th>ID_DonHang</th>
									<th>Tên khách hàng</th>
									<th>Tên sản phẩm</th>
									<th>Giá</th>
									<th>Hình</th>
									<th>Địa chỉ</th>
									<th>Số điện thoại</th>
									<th>Số lượng</th>
									<th>Tổng tiền</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.card-body -->
				</div>



			</section>




			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright &copy; 2023 <a href="">Demo</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.2.0
			</div>
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>


	<%@ include file="/common/admin/js.jsp"%>
</body>
</html>

