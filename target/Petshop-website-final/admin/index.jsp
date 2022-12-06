<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
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

    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link">

</head>
<% CustomerUser user = (CustomerUser) session.getAttribute("user"); %>

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
			<img src="assets/images/logo.png" alt="" class="logo logo-lg">
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
    <jsp:include page="layout-admin/header-admin.jsp"></jsp:include>
	<!-- [ Header ] end -->

<!-- [ Main Content ] start -->
<div class="pc-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Quản lý</a></li>
                            <li class="breadcrumb-item">Quản lý chung</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <!-- support-section start -->
            <div class="col-xl-6 col-md-12">
                <div class="card flat-card">
                    <div class="row-table">
                        <div class="col-sm-6 card-body br">
                            <div class="row">
                                <div class="col-sm-4">
                                    <i class="material-icons-two-tone text-primary mb-1">group</i>
                                </div>
                                <div class="col-sm-8 text-md-center">
                                    <h5>953</h5>
                                    <span>Khách hàng</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 d-none d-md-table-cell d-lg-table-cell d-xl-table-cell card-body br">
                            <div class="row">
                                <div class="col-sm-4">
                                    <i class="material-icons-two-tone text-primary mb-1">language</i>
                                </div>
                                <div class="col-sm-8 text-md-center">
                                    <h5>310 triệu</h5>
                                    <span>Lợi nhuận</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <i class="material-icons-two-tone text-primary mb-1">unarchive</i>
                                </div>
                                <div class="col-sm-8 text-md-center">
                                    <h5>34</h5>
                                    <span>vận chuyển</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row-table">
                        <div class="col-sm-6 card-body br">
                            <div class="row">
                                <div class="col-sm-4">
                                    <i class="material-icons-two-tone text-primary mb-1">swap_horizontal_circle</i>
                                </div>
                                <div class="col-sm-8 text-md-center">
                                    <h5>04</h5>
                                    <span>Trả về</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 d-none d-md-table-cell d-lg-table-cell d-xl-table-cell card-body br">
                            <div class="row">
                                <div class="col-sm-4">
                                    <i class="material-icons-two-tone text-primary mb-1">cloud_download</i>
                                </div>
                                <div class="col-sm-8 text-md-center">
                                    <h5>350</h5>
                                    <span>Người dùng</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <i class="material-icons-two-tone text-primary mb-1">shopping_cart</i>
                                </div>
                                <div class="col-sm-8 text-md-center">
                                    <h5>75%</h5>
                                    <span>Trạng thái</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card support-bar overflow-hidden">
                            <div class="card-body pb-0">
                                <h2 class="m-0">75.38%</h2>
                                <span class="text-primary">Đơn hàng hoàn tất</span>
                                <p class="mb-3 mt-3">Số lượng đơn hàng đã vận chuyển thành công trong tháng </p>
                            </div>
                            <div id="support-chart"></div>
                            <div class="card-footer border-0 bg-primary text-white background-pattern-white">
                                <div class="row text-center">
                                    <div class="col">
                                        <h4 class="m-0 text-white">20</h4>
                                        <span>08/2021</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0 text-white">15</h4>
                                        <span>09/2021</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0 text-white">19</h4>
                                        <span>10/2021</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card support-bar overflow-hidden">
                            <div class="card-body pb-0">
                                <h2 class="m-0">112</h2>
                                <span class="text-primary">Đơn hàng đã vận chuyển</span>
                                <p class="mb-3 mt-3">Tổng số lượng đơn hàng đã vận chuyển trong tháng</p>
                            </div>
                            <div class="card-footer border-0">
                                <div class="row text-center">
                                    <div class="col">
                                        <h4 class="m-0">35</h4>
                                        <span>8/2021</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0">47</h4>
                                        <span>9/2021</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0 ">30</h4>
                                        <span>10/2021</span>
                                    </div>
                                </div>
                            </div>
                            <div id="support-chart1"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Thống kê doanh thu của cửa hàng</h5>
                    </div>
                    <div class="card-body">
                        <div class="row pb-2">
                            <div class="col-auto m-b-10">
                                <h3 class="mb-1">724.000.000đ</h3>
                                <span>Tổng doanh thu</span>
                            </div>
                            <div class="col-auto m-b-10">
                                <h3 class="mb-1">315.000.000đ</h3>
                                <span>Trung bình</span>
                            </div>
                        </div>
                        <div id="account-chart"></div>
                    </div>
                </div>
            </div>
            <!-- support-section end -->
            <!-- customer-section start -->
            <div class="col-xl-6 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h6>Đánh giá của khách hàng</h6>
                        <span>Tổng hợp tất cả đánh giá của khách hàng</span>
                        <div class="row d-flex justify-content-center align-items-center">
                            <div class="col">
                                <div id="satisfaction-chart"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card table-card">
                    <div class="card-header">
                        <h5>Trạng thái công việc</h5>
                    </div>
                    <div class="pro-scroll" style="height:255px;position:relative;">
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table table-hover m-b-0">
                                    <thead>
                                        <tr>
                                            <th><i data-feather="file-text"></i></th>
                                            <th>Tên công việc</th>
                                            <th>Số lượng</th>
                                            <th>Trạng thái</th>
                                            <th>Chỉnh sửa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i></td>
                                            <td>Nhập 10 chó Husky</td>
                                            <td style="text-align: center;">1</td>
                                            <td>
                                                <div><label class="badge bg-light-warning">Đang thực hiện</label></div>
                                            </td>
                                            <td style="text-align: center;"><a href="#!"><i class="icon feather icon-edit f-16  text-success"></i></a><a href="#!"><i class="feather icon-trash-2 ml-3 f-16 text-danger"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i></td>
                                            <td>Nhập 40 áo len cún</td>
                                            <td style="text-align: center;">2</td>
                                            <td>
                                                <div><label class="badge bg-light-danger">Đã hủy</label></div>
                                            </td>
                                            <td style="text-align: center;"><a href="#!"><i class="icon feather icon-edit f-16  text-success"></i></a><a href="#!"><i class="feather icon-trash-2 ml-3 f-16 text-danger"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i></td>
                                            <td>Thêm tin tức mới</td>
                                            <td style="text-align: center;">1</td>
                                            <td>
                                                <div><label class="badge bg-light-success">Hoàn thành</label></div>
                                            </td>
                                            <td style="text-align: center;"><a href="#!"><i class="icon feather icon-edit f-16 text-success"></i></a><a href="#!"><i class="feather icon-trash-2 ml-3 f-16 text-danger"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i></td>
                                            <td>Chỉnh sửa trang chủ</td>
                                            <td style="text-align: center;">1</td>
                                            <td>
                                                <div><label class="badge bg-light-success">Hoàn thành</label></div>
                                            </td>
                                            <td style="text-align: center;"><a href="#!"><i class="icon feather icon-edit f-16 text-success"></i></a><a href="#!"><i class="feather icon-trash-2 ml-3 f-16 text-danger"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i></td>
                                            <td>Nhập 15 mèo Anh</td>
                                            <td style="text-align: center;">3</td>
                                            <td>
                                                <div><label class="badge bg-light-danger">Đã hủy</label></div>
                                            </td>
                                            <td style="text-align: center;"><a href="#!"><i class="icon feather icon-edit f-16 text-success"></i></a><a href="#!"><i class="feather icon-trash-2 ml-3 f-16 text-danger"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i></td>
                                            <td>Vận chuyển 7 đơn hàng</td>
                                            <td style="text-align: center;">1</td>
                                            <td>
                                                <div><label class="badge bg-light-warning">Đang thực hiện</label></div>
                                            </td>
                                            <td style="text-align: center;"><a href="#!"><i class="icon feather icon-edit f-16 text-success"></i></a><a href="#!"><i class="feather icon-trash-2 ml-3 f-16 text-danger"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i></td>
                                            <td>Thêm user mới</td>
                                            <td style="text-align: center;">2</td>
                                            <td>
                                                <div><label class="badge bg-light-danger">Đã hủy</label></div>
                                            </td>
                                            <td style="text-align: center;"><a href="#!"><i class="icon feather icon-edit f-16 text-success"></i></a><a href="#!"><i class="feather icon-trash-2 ml-3 f-16 text-danger"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-md-12">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card prod-p-card background-pattern">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5">Tổng thú cưng</h6>
                                        <h3 class="m-b-0">630</h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="material-icons-two-tone text-primary">card_giftcard</i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card prod-p-card bg-primary background-pattern-white">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5 text-white">Tổng order</h6>
                                        <h3 class="m-b-0 text-white">256</h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="material-icons-two-tone text-white">local_mall</i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card prod-p-card bg-primary background-pattern-white">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5 text-white">Lãi trung bình</h6>
                                        <h3 class="m-b-0 text-white">60%</h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="material-icons-two-tone text-white">monetization_on</i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card prod-p-card background-pattern">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5">Số thú cưng đã bán</h6>
                                        <h3 class="m-b-0">205</h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="material-icons-two-tone text-primary">local_offer</i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card feed-card">
                    <div class="card-header">
                        <h5>Thông báo</h5>
                    </div>
                    <div class="feed-scroll" style="height:385px;position:relative;">
                        <div class="card-body">
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="bell" class="bg-light-primary feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Bạn có 5 order mới<span class="text-muted float-right f-14">Vừa xong</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="shopping-cart" class="bg-light-danger feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Đã nhận 3 order <span class="text-muted float-right f-14">30 phút trước</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Bạn có 3 công việc mới <span class="text-muted float-right f-14">Vừa xong</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="bell" class="bg-light-primary feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Bạn đã hoàn thành 2 công việc<span class="text-muted float-right f-14">1 tiếng trước</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Bạn có 5 công việc mới <span class="text-muted float-right f-14">15 phút trước</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="shopping-cart" class="bg-light-danger feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Đã nhận 3 order <span class="text-muted float-right f-14">4 tiếng trước</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="shopping-cart" class="bg-light-danger feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Order hoàn thành <span class="text-muted float-right f-14">Vừa xong</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-25 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="file-text" class="bg-light-success feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Bạn có 6 công việc mới <span class="text-muted float-right f-14">5 tiếng trước</span></h6>
                                    </a>
                                </div>
                            </div>
                            <div class="row m-b-0 align-items-center">
                                <div class="col-auto p-r-0">
                                    <i data-feather="bell" class="bg-light-primary feed-icon p-2 wid-30 hei-30"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6 class="m-b-5">Bạn đã hoàn thành 4 công việc <span class="text-muted float-right f-14">2 tiếng trước</span></h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- customer-section end -->
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

<!-- Apex Chart -->
<script src="assets/js/plugins/apexcharts.min.js"></script>
<!-- custom-chart js -->
<script src="assets/js/pages/dashboard-sale.js"></script>
</body>

</html>
