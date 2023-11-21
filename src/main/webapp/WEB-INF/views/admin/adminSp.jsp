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
								<li class="breadcrumb-item active">Quản lý sản phẩm</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->



			<%-- bắt đầu --%>

			<!-- Main content -->
			<section class="content">
				<form action="/adminSp" method="POST" modelAttribute="item"
					enctype="multipart/form-data">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="card card-primary">
									<div class="card-header">
										<h3 class="card-title">Quản lý sản phẩm</h3>

										<div class="card-tools">
											<button type="button" class="btn btn-tool"
												data-card-widget="collapse" title="Collapse">
												<i class="fas fa-minus"></i>
											</button>
										</div>
									</div>



									<div class="card-body">
										<div class="form-group">
											<label for="title">Id Sản Phẩm</label> <input type="text"
												class="form-control" name="idSP" value="${item.idSP}">
										</div>
										<div class="form-group">
											<label for="title">Tên Sản Phẩm</label> <input type="text"
												class="form-control" name="tenSP" value="${item.tenSP}">
										</div>
										<div class="form-group">
											<label for="href">Giá Sản Phẩm</label> <input type="text"
												class="form-control" name="gia" value="${item.gia}">
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-9">
													<div class="row">
														<div class="col-12 form-group">
															<label for="description">Mô Tả</label>
															<textarea type="text" class="form-control" name="moTa"
																rows="4"> ${item.moTa}</textarea>
														</div>
														<%-- <div class="col-12 form-group">
															<label for="poster">Ngày tạo</label> <input type="date"
																class="form-control" name="ngayTao">
														</div> --%>
													</div>
												</div>

												<div class="col-2" style="margin-left: 5%">
													<label for="">Hình ảnh</label>
													<div
														style="width: 100%; height: 70%; border: 1px dotted gray">

														<img
															src="${pageContext.request.contextPath}/images/products/${item.img}"
															style="max-width: 100%; max-height: 100%;" />
													</div>
												</div>
											</div>

										</div>

										<div class="form-group">
											<label for="exampleInputFile">Thêm ảnh</label>
											<div class="input-group">
												<div class="custom-file">
													<input type="file" class="custom-file-input" id="imageFile"
														name="imageFile"> <label class="custom-file-label"
														for="exampleInputFile">Chọn file</label>
												</div>
											</div>
										</div>
									</div>



									<!-- /.card-body -->
								</div>
								<!-- /.card -->
							</div>
							<div class="row" style="margin: auto auto;">



								<button formaction="/adminSp/add"
									class="btn btn-outline-primary " style="margin-right: 15px;">Thêm</button>

								<button formaction="/adminSp/update"
									class="btn btn-outline-danger" style="margin-right: 15px;">Sửa</button>
								<button formaction="/adminSp" class="btn btn-outline-warning"
									style="margin-right: 15px;">Riset</button>
								<button formaction="/adminSp/delete/${item.idSP}"
									class="btn btn-outline-primary" style="margin-right: 15px;">Ẩn</button>
								<button formaction="/adminSp/show/${item.idSP}"
									class="btn btn-outline-danger" style="margin-right: 15px;">Hiện</button>




							</div>
						</div>
					</div>
				</form>
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
									<th>Trạng thái</th>
									<th>Ngày tạo</th>
									<th>Ngày sửa</th>
									<th></th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="sp" items="${adminSp}">
									<tr>
										<td><c:out value="${sp.idSP}" /></td>
										<td><c:out value="${sp.tenSP}" /></td>
										<td><c:out value="${sp.gia}" /></td>
										<td><img
											src="${pageContext.request.contextPath}/images/products/${sp.img}"
											alt="" /></td>
										<td><c:out value="${sp.moTa}" /></td>
										<td><c:out value="${sp.hidden ? 'ẨN' : 'HIỆN'}" /></td>
										<td><c:out value="${sp.ngayTao}" /></td>
										<td><c:out value="${sp.ngayEdit}" /></td>

										<td><button
												class="btn btn-block btn-outline-light btn-sm">
												<a href="/adminSp/edit/${sp.idSP}">Edit</a>
											</button></td>
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
									<th>Trạng thái</th>
									<th>Ngày tạo</th>
									<th>Ngày sửa</th>
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

