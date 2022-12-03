<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quản lý Petshop</title>
    <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 11]>
    	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    	<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="DashboardKit is made using Bootstrap 5 design framework. Download the free admin template & use it for your project.">
    <meta name="keywords" content="DashboardKit, Dashboard Kit, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Free Bootstrap Admin Template">
    <meta name="author" content="DashboardKit ">


    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.svg" type="image/x-icon">

    <!-- font css -->
    <link rel="stylesheet" href="assets/fonts/feather.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome.css">
    <link rel="stylesheet" href="assets/fonts/material.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link">

</head>

<body class="">
	<!-- [ Pre-loader ] start -->
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	<!-- [ Pre-loader ] End -->
	<!-- [ Mobile header ] start -->
	<div class="pc-mob-header pc-header">
		<div class="pcm-logo">
			<img src="assets/images/logo.svg" alt="" class="logo logo-lg">
		</div>
		<div class="pcm-toolbar">
			<a href="#!" class="pc-head-link" id="mobile-collapse">
				<div class="hamburger hamburger--arrowturn">
					<div class="hamburger-box">
						<div class="hamburger-inner"></div>
					</div>
				</div>
			</a>
			<a href="#!" class="pc-head-link" id="headerdrp-collapse">
				<i data-feather="align-right"></i>
			</a>
			<a href="#!" class="pc-head-link" id="header-collapse">
				<i data-feather="more-vertical"></i>
			</a>
		</div>
	</div>
	<!-- [ Mobile header ] End -->

	<!-- [ navigation menu ] start -->
	<nav class="pc-sidebar ">
		<div class="navbar-wrapper">
			<div class="m-header">
				<a href="index.jsp" class="b-brand">
					<!-- ========   change your logo hear   ============ -->
					<img src="assets/images/logo.png" alt="" class="logo logo-lg">
					<img src="assets/images/logo-sm.svg" alt="" class="logo logo-sm">
				</a>
			</div>
			<div class="navbar-content">
                <ul class="pc-navbar">
                    <li class="pc-item pc-caption">
                        <label>Quản lý</label>
                    </li>
                    <li class="pc-item">
                        <a href="index.jsp" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">home</i></span><span class="pc-mtext">Quản lý chung</span></a>
                    </li>
                    <li class="pc-item pc-caption">
                        <label>Quản lý sản phẩm</label>
                        <!-- <span>UI Components</span> -->
                    </li>
                    <li class="pc-item pc-hasmenu">
                        <a href="#!" class="pc-link "><span class="pc-micon"><i data-feather="github">business_center</i></span><span class="pc-mtext">Thú cưng</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                        <ul class="pc-submenu">
                            <li class="pc-item"><a class="pc-link" href="list-products.jsp">Danh sách thú cưng</a></li>
                            <li class="pc-item"><a class="pc-link" href="add-product.jsp">Thêm thú cưng</a></li>
                        </ul>
                    </li>
                    <li class="pc-item pc-hasmenu">
                        <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">business_center</i></span><span class="pc-mtext">Phụ kiện</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                        <ul class="pc-submenu">
                            <li class="pc-item"><a class="pc-link" href="list-accessory.jsp">Danh sách phụ kiện</a></li>
                            <li class="pc-item"><a class="pc-link" href="add-accessory.jsp">Thêm phụ kiện</a></li>
                        </ul>
                    </li>
                    <li class="pc-item">
                        <a href="products-status.jsp" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">history_edu</i></span><span class="pc-mtext">Tình trạng đơn hàng</span></a>
                    </li>
                    <li class="pc-item pc-caption">
                        <label>Quản lý tin tức</label>
                    </li>
                    <li class="pc-item pc-hasmenu">
                        <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone" data-feather="file-minus"></i></span><span class="pc-mtext">Tin tức</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                        <ul class="pc-submenu">
                            <li class="pc-item"><a class="pc-link" href="list-blog.jsp">Danh sách tin tức</a></li>
                            <li class="pc-item"><a class="pc-link" href="add-blog.jsp">Thêm tin tức</a></li>
                        </ul>
                    </li>
                    <li class="pc-item pc-caption">
                        <label>Tài khoản</label>
                    </li>
                    <li class="pc-item pc-hasmenu">
                        <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone" data-feather="cpu"></i></span><span class="pc-mtext">Admin</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                        <ul class="pc-submenu">
                            <li class="pc-item"><a class="pc-link" href="list-admin.jsp">Danh sách admin</a></li>
                            <li class="pc-item"><a class="pc-link" href="add-admin.jsp">Thêm admin</a></li>
                        </ul>
                    </li>
                    <li class="pc-item pc-hasmenu">
                        <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone" data-feather="user"></i></span><span class="pc-mtext">Người dùng</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                        <ul class="pc-submenu">
                            <li class="pc-item"><a class="pc-link" href="list-user.jsp">Danh sách người dùng</a></li>
                            <li class="pc-item"><a class="pc-link" href="add-user.jsp">Thêm người dùng</a></li>
                        </ul>
                    </li>
                    <li class="pc-item pc-caption">
                        <label>Quản lý bình luận</label>
                    </li>
                    <li class="pc-item">
                        <a href="list-comment.jsp" class="pc-link "><span class="pc-micon"><i data-feather="message-circle">history_edu</i></span><span class="pc-mtext">Bình luận</span></a>
                    </li>
                </ul>
            </div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->
	<!-- [ Header ] start -->
	<header class="pc-header ">
		<div class="header-wrapper">
            <div class="page-header-title">
                <h5 class="m-b-10" style="margin-top: 28px; font-weight: bolder;">QUẢN LÝ CỬA HÀNG THÚ CƯNG</h5>
            </div>
			<div class="ml-auto">
				<ul class="list-unstyled">
					<li class="dropdown pc-h-item">
						<a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
							<i class="material-icons-two-tone">search</i>
						</a>
						<div class="dropdown-menu dropdown-menu-right pc-h-dropdown drp-search">
							<form class="px-3">
								<div class="form-group mb-0 d-flex align-items-center">
									<i data-feather="search"></i>
									<input type="search" class="form-control border-0 shadow-none" placeholder="Search here. . .">
								</div>
							</form>
						</div>
					</li>
					<li class="dropdown pc-h-item">
						<a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
							<img src="assets/images/user/avatar-2.png" alt="user-image" class="user-avtar">
							<span>
								<span class="user-name">Admin</span>
								<span class="user-desc">Quản lý cấp 1</span>
							</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right pc-h-dropdown">
							<div class=" dropdown-header">
								<h5 class="text-overflow m-0"><span class="badge bg-light-primary"><a href="https://gumroad.com/dashboardkit" target="_blank">Thêm admin mới</a></span></h5>
							</div>
                            <a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">account_circle</i>
								<span>Tài khoản của tôi</span>
							</a>
							<!-- <div class="pc-level-menu">
								<a href="#!" class="dropdown-item">
									<i class="material-icons-two-tone">list_alt</i>
									<span class="float-right"><i class="mr-0"></i></span>
									<span>Level2.1</span>
								</a>
								<div class="dropdown-menu pc-h-dropdown">
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Tài khoản của tôi</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Settings</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Support</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Lock Screen</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Đăng xuất</span>
									</a>
								</div>
							</div> -->
							<!-- <a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">settings</i>
								<span>Settings</span>
							</a> -->
							<!-- <a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">support</i>
								<span>Support</span>
							</a> -->
							<!-- <a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">https</i>
								<span>Lock Screen</span>
							</a> -->
							<a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">chrome_reader_mode</i>
								<span>Đăng xuất</span>
							</a>
						</div>
					</li>
				</ul>
			</div>

		</div>
	</header>
	<!-- [ Header ] end -->

<!-- [ Main Content ] start -->
<div class="pc-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <!-- <div class="page-header-title">
                            <h5 class="m-b-10">Dashboard sale</h5>
                        </div> -->
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">Quản lý sản phẩm</li>
                            <li class="breadcrumb-item">Tình trạng đơn hàng</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-text">Tìm kiếm đơn hàng</span>
                                        <input type="text" class="form-control" placeholder="Search...">
                                    </div>
           
                                </div>
                        </div>
                                <div class="tab-pane fade show active" id="nav-week1" role="tabpanel" aria-labelledby="nav-week1-tab">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th data-toggle="tooltip">Mã đơn hàng</th>
                                            <th data-toggle="tooltip">Người mua</th>
                                            <th>Sản phẩm</th>
                                            <th>Số lượng</th>
                                            <th>Tình trạng</th>
                                            <th>Ngày mua</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td scope="row">0151</td>
                                            <td>Nguyễn Thanh Tùng</td>
                                            <td>Cún golden siêu phẩm</td>
                                            <td>01</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Hoàn thành
                                                    <i class="material-icons-two-tone" data-feather="check"></i> 
                                                </a></td>
                                            <td>21/05/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0152</td>
                                            <td>Nguyễn Ngọc Sơn</td>
                                            <td>Mèo chân ngắn tai cụp</td>
                                            <td>01</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Đang xử lý&ensp;
                                                    <i class="material-icons-two-tone" data-feather="loader"></i> 
                                                </a></td>
                                            <td>26/07/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0153</td>
                                            <td>Nguyễn Ngọc My</td>
                                            <td>Munchkin Bicolor</td>
                                            <td>02</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Hoàn thành
                                                    <i class="material-icons-two-tone" data-feather="check"></i> 
                                                </a></td>
                                            <td>14/08/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0154</td>
                                            <td>Ngô Đức Hòa</td>
                                            <td>Alaska Giant xám trắng</td>
                                            <td>01</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Hoàn thành
                                                    <i class="material-icons-two-tone" data-feather="check"></i> 
                                                </a></td>
                                            <td>05/09/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0155</td>
                                            <td>Nguyễn Hoài Thương</td>
                                            <td>Alaska Giant xám trắng</td>
                                            <td>01</td>
                                            <td><a href="" style="font-weight: bold;">
                                                Đang xử lý&ensp;
                                                <i class="material-icons-two-tone" data-feather="loader"></i> 
                                            </a></td>
                                            <td>10/09/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0156</td>
                                            <td>Vũ Văn Kiệt</td>
                                            <td>Mèo tai cụp</td>
                                            <td>01</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Hoàn thành
                                                    <i class="material-icons-two-tone" data-feather="check"></i> 
                                                </a></td>
                                            <td>20/09/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0157</td>
                                            <td>Trần Tấn Nhất</td>
                                            <td>Scottish Van tai cụp</td>
                                            <td>02</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Hủy đơn hàng
                                                    <i class="material-icons-two-tone" data-feather="x"></i> 
                                                </a></td>
                                            <td>15/10/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0158</td>
                                            <td>Lê Chí Công</td>
                                            <td>Phốc sóc mặt gấu</td>
                                            <td>01</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Hoàn thành
                                                    <i class="material-icons-two-tone" data-feather="check"></i> 
                                                </a></td>
                                            <td>24/10/2021</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">0159</td>
                                            <td>Ngô Đức Hòa</td>
                                            <td>Mèo chân ngắn tai cụp</td>
                                            <td>01</td>
                                            <td><a href="" style="font-weight: bold;">
                                                    Hoàn thành
                                                    <i class="material-icons-two-tone" data-feather="check"></i> 
                                                </a></td>
                                            <td>05/09/2021</td>
                                        </tr>
                                    </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- [ Main Content ] end -->
    </div>
</div>

    <!-- Required Js -->
    <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/js/plugins/bootstrap.min.js"></script>
    <script src="assets/js/plugins/feather.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    <script src="assets/js/plugins/clipboard.min.js"></script>
    <script src="assets/js/uikit.min.js"></script>
    <script src="assets/css/status/bootstrap.min.js"></script>

<!-- Apex Chart -->
<script src="assets/js/plugins/apexcharts.min.js"></script>
<!-- custom-chart js -->
<script src="assets/js/pages/dashboard-sale.js"></script>
</body>

</html>
