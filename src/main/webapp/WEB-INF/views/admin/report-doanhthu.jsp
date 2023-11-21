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
						<li class="nav-item "><a href="/admin" class="nav-link ">
								<i class="nav-icon fas fa-tachometer-alt"></i>
								<p>Home</p>
						</a></li>


						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Sản phẩm <i class="right fas fa-angle-left "></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link "> <i class="far fa-circle nav-icon"></i>
										<p>Tổng quan</p>
								</a></li>
								<li class="nav-item"><a href="/adminSp"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
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

			<%-- bắt đầu --%>

			<!-- Main content -->
			<section class="content">

				<!-- Content Wrapper -->
				<div id="content-wrapper" class="d-flex flex-column">

					<!-- Main Content -->
					<div id="content">
						<!-- Begin Page Content -->
						<div class="container-fluid">

							<!-- Page Heading -->
							<div
								class="d-sm-flex align-items-center justify-content-between mb-4">
								<h1 class="h3 mb-0 text-gray-800">DOANH THU</h1>
							</div>

							<div class="row">

								<!-- Earnings (Monthly) Card Example -->
								<div class="col-xl-3 col-md-6 mb-4">
									<div class="card border-left-primary shadow h-100 py-2">
										<div class="card-body">
											<div class="row no-gutters align-items-center">
												<div class="col mr-2">
													<div
														class="text-xs font-weight-bold text-primary text-uppercase mb-1">
														Doanh thu 30 ngày gần đây</div>
													<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
												</div>
												<div class="col-auto">
													<i class="fas fa-calendar fa-2x text-gray-300"></i>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Earnings (Annual) Card Example -->
								<div class="col-xl-3 col-md-6 mb-4">
									<div class="card border-left-success shadow h-100 py-2">
										<div class="card-body">
											<div class="row no-gutters align-items-center">
												<div class="col mr-2">
													<div
														class="text-xs font-weight-bold text-success text-uppercase mb-1">
														Doanh thu năm</div>
													<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
												</div>
												<div class="col-auto">
													<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Tasks Card Example -->
								<div class="col-xl-3 col-md-6 mb-4">
									<div class="card border-left-info shadow h-100 py-2">
										<div class="card-body">
											<div class="row no-gutters align-items-center">
												<div class="col mr-2">
													<div
														class="text-xs font-weight-bold text-info text-uppercase mb-1">Đơn
														hàng trong tháng</div>
													<div class="row no-gutters align-items-center">
														<div class="col-auto">
															<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
														</div>
														<div class="col">
															<div class="progress progress-sm mr-2">
																<div class="progress-bar bg-info" role="progressbar"
																	style="width: 50%" aria-valuenow="50" aria-valuemin="0"
																	aria-valuemax="100"></div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-auto">
													<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Pending Requests Card Example -->
								<div class="col-xl-3 col-md-6 mb-4">
									<div class="card border-left-warning shadow h-100 py-2">
										<div class="card-body">
											<div class="row no-gutters align-items-center">
												<div class="col mr-2">
													<div
														class="text-xs font-weight-bold text-warning text-uppercase mb-1">
														Pending Requests</div>
													<div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
												</div>
												<div class="col-auto">
													<i class="fas fa-comments fa-2x text-gray-300"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.container-fluid -->

					</div>

					<div style="margin: 1%">
						<%-- In case of success --%>
						<c:if test="${not empty successMessage}">
							<div class="alert alert-success">${successMessage}</div>
						</c:if>

						<%-- In case of error --%>
						<c:if test="${not empty errorMessage}">
							<div class="alert alert-danger">${errorMessage}</div>
						</c:if>
					</div>
			</section>

			<!-- Main content -->
			<section class="content" style="margin-top: 5%">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Thông tin đơn hàng</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>Tên người đặt</th>
									<th>Tổng tiền</th>
									<th>Ngày đặt</th>
									<th></th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="od" items="${orders}">
									<tr>
										<td>${od.idDH}</td>
										<td>${od.tenNguoiNhan}</td>
										<td>${od.tongTien}</td>
										<td>${od.ngayDat}</td>
										<td><button
												class="btn btn-block btn-outline-light btn-sm">
												<a href="/adminSp/edit/${sp.idDH}">Chi tiết</a>
											</button></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>ID</th>
									<th>Tên người đặt</th>
									<th>Tổng tiền</th>
									<th>Ngày đặt</th>
									<th></th>
								</tr>

							</tfoot>
						</table>
					</div>
					<!-- /.card-body -->
				</div>

			</section>









			<%-- kết thúc --%>







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

