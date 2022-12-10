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
    <script src="bonus/js/imageloaded.min.js"></script>

    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="bonus/css/dropzone.min.css" rel="stylesheet" />
    <link href="bonus/css/line.css" rel="stylesheet" />
    <link href="bonus/css/choices.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&amp;display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
    />
    <link
      href="bonus/css/theme.min.css"
      type="text/css"
      rel="stylesheet"
      id="style-default"
    />
    <link
      href="../../../assets/css/user.min.css"
      type="text/css"
      rel="stylesheet"
      id="user-style-default"
    />
    <link
      rel="stylesheet"
      type="text/css"
      id="mce-u0"
      href="bonus/css/skin.min.css"
    />
    <style>
      .blog_btn {
	      display: inline-block;
	      font-size: 14px;
	      color: #1c1c1c;
	      text-transform: uppercase;
	      letter-spacing: 1px;
	      border: 1px solid #b2b2b2;
	      padding: 10px 20px 10px;
	      border-radius: 25px;
      }

      .blog__btn i {
	      position: relative;
	      top: 1px;
	      margin-left: 5px;
      }
    </style>
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
                    <li class="pc-item"><a class="pc-link" href="list-products">Danh sách thú cưng</a></li>
                    <li class="pc-item"><a class="pc-link" href="add-product.jsp">Thêm thú cưng</a></li>
                </ul>
            </li>
            <li class="pc-item pc-hasmenu">
                <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">business_center</i></span><span class="pc-mtext">Phụ kiện</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                <ul class="pc-submenu">
                    <li class="pc-item"><a class="pc-link" href="list-accessory">Danh sách phụ kiện</a></li>
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
                        <!-- <div class="page-header-title">
                            <h5 class="m-b-10">Dashboard sale</h5>
                        </div> -->
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">Quản lý tin tức</li>
                            <li class="breadcrumb-item">Tin tức</li>
                            <li class="breadcrumb-item">Danh sách tin tức</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="row gx-3 gy-2 mb-3">
              <h2 style=" font-weight: 800; text-align: center; margin-bottom: 30px;">Danh sách tin tức</h2>
              <div class="col-12 col-sm-6 col-md-4 col-xxl-2">
                <div class="product-card-container h-100">
                  <div class="position-relative text-decoration-none product-card h-100">
                    <div class="d-flex flex-column justify-content-between h-100">
                      <div>
                        <div class="border border-1 border-2002 rounded-3 position-relative mb-3"><img class="img-fluid" src="assets/images/blog/blog-1.jpg" alt=""></div><a class="stretched-link text-decoration-none" href="">
                          <p class=" text-700 mb-2"><i data-feather="calendar"></i> December 11, 2021</p>
                        </a>
                        <h4 class="mb-2 lh-sm line-clamp-3">Giống chó Alaskan Malamute: khổng lồ liệu giá có rẻ?</h4>
                      </div>
                      <h5 class="text-600 mb-0">Giống chó Alaskan Malamute hay chó Alaska, là một trong những giống chó kéo xe ...</h5>
                      <div>
                        <div class="d-flex align-items-center mb-1 mt-3">
                          <a class="blog_btn">ĐỌC THÊM  <i data-feather="arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-md-4 col-xxl-2">
                <div class="product-card-container h-100">
                  <div class="position-relative text-decoration-none product-card h-100">
                    <div class="d-flex flex-column justify-content-between h-100">
                      <div>
                        <div class="border border-1 border-2002 rounded-3 position-relative mb-3"><img class="img-fluid" src="assets/images/blog/blog-2.jpg" alt=""></div><a class="stretched-link text-decoration-none" href="">
                          <p class=" text-700 mb-2"><i data-feather="calendar"></i> December 11, 2021</p>
                        </a>
                        <h4 class="mb-2 lh-sm line-clamp-3">Hãy dừng lại nếu bạn đang cho chó mèo ăn chay</h4>
                      </div>
                      <h5 class="text-600 mb-0">Hãy dừng ngay lại việc cho chó mèo ăn chay hoặc rau củ quả với hàm lượng lớn ...</h5>
                      <div>
                        <div class="d-flex align-items-center mb-1 mt-3">
                          <a class="blog_btn">ĐỌC THÊM  <i data-feather="arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-md-4 col-xxl-2">
                <div class="product-card-container h-100">
                  <div class="position-relative text-decoration-none product-card h-100">
                    <div class="d-flex flex-column justify-content-between h-100">
                      <div>
                        <div class="border border-1 border-2002 rounded-3 position-relative mb-3"><img class="img-fluid" src="assets/images/blog/blog-3.jpg" alt=""></div><a class="stretched-link text-decoration-none" href="">
                          <p class=" text-700 mb-2"><i data-feather="calendar"></i> December 11, 2021</p>
                        </a>
                        <h4 class="mb-2 lh-sm line-clamp-3">Phải làm sao khi chó bị đau chân và đi khập khiễng ?</h4>
                      </div>
                      <h5 class="text-600 mb-0">Chó bị đau chân cà nhắc có thể do nhiều nguyên nhân bởi loài chó rất hiếu động ...</h5>
                      <div>
                        <div class="d-flex align-items-center mb-1 mt-3">
                          <a class="blog_btn">ĐỌC THÊM  <i data-feather="arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-md-4 col-xxl-2">
                <div class="product-card-container h-100">
                  <div class="position-relative text-decoration-none product-card h-100">
                    <div class="d-flex flex-column justify-content-between h-100">
                      <div>
                        <div class="border border-1 border-2002 rounded-3 position-relative mb-3"><img class="img-fluid" src="assets/images/blog/blog-4.jpg" alt=""></div><a class="stretched-link text-decoration-none" href="">
                          <p class=" text-700 mb-2"><i data-feather="calendar"></i> December 11, 2021</p>
                        </a>
                        <h4 class="mb-2 lh-sm line-clamp-3">Danh sách các thuốc tẩy giun cho chó con an toàn</h4>
                      </div>
                      <h5 class="text-600 mb-0">Mua thuốc tẩy giun cho chó con là một việc nhất thiết bạn phải làm khi nuôi một ...</h5>
                        
                      <div>
                        <div class="d-flex align-items-center mb-1 mt-3">
                          <a class="blog_btn">ĐỌC THÊM  <i data-feather="arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-md-4 col-xxl-2">
                <div class="product-card-container h-100">
                  <div class="position-relative text-decoration-none product-card h-100">
                    <div class="d-flex flex-column justify-content-between h-100">
                      <div>
                        <div class="border border-1 border-2002 rounded-3 position-relative mb-3"><img class="img-fluid" src="assets/images/blog/blog-5.jpg" alt=""></div><a class="stretched-link text-decoration-none" href="">
                          <p class=" text-700 mb-2"><i data-feather="calendar"></i> December 11, 2021</p>
                        </a>
                        <h4 class="mb-2 lh-sm line-clamp-3">Cách chăm sóc chó mang thai tại nhà cần phải biết</h4>
                      </div>
                      <h5 class="text-600 mb-0">Việc chăm sóc chó mang thai tại nhà cũng không hề đơn giản. Nếu bạn không có ...</h5>
                      <div>
                        <div class="d-flex align-items-center mb-1 mt-3">
                          <a class="blog_btn">ĐỌC THÊM  <i data-feather="arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-md-4 col-xxl-2">
                <div class="product-card-container h-100">
                  <div class="position-relative text-decoration-none product-card h-100">
                    <div class="d-flex flex-column justify-content-between h-100">
                      <div>
                        <div class="border border-1 border-2002 rounded-3 position-relative mb-3"><img class="img-fluid" src="assets/images/blog/blog-6.jpg" alt=""></div><a class="stretched-link text-decoration-none" href="">
                          <p class=" text-700 mb-2"><i data-feather="calendar"></i> December 11, 2021</p>
                        </a>
                        <h4 class="mb-2 lh-sm line-clamp-3">Danh sách các thuốc tẩy giun cho chó con an toàn</h4>
                      </div>
                      <h5 class="text-600 mb-0">Mua thuốc tẩy giun cho chó con là một việc nhất thiết bạn phải làm khi nuôi một ...</h5>
                      <div>
                        <div class="d-flex align-items-center mb-1 mt-3">
                          <a class="blog_btn">ĐỌC THÊM  <i data-feather="arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="d-flex justify-content-end">
                <ul class="pagination mb-6">
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <svg class="svg-inline--fa fa-chevron-left" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M224 480c-8.188 0-16.38-3.125-22.62-9.375l-192-192c-12.5-12.5-12.5-32.75 0-45.25l192-192c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25L77.25 256l169.4 169.4c12.5 12.5 12.5 32.75 0 45.25C240.4 476.9 232.2 480 224 480z"></path></svg><!-- <span class="fas fa-chevron-left"> </span> Font Awesome fontawesome.com -->
                    </a>
                  </li>
                  <li class="page-item active" aria-current="page">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">3</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link pe-0" href="#"> <svg class="svg-inline--fa fa-chevron-right" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z"></path></svg><!-- <span class="fas fa-chevron-right"></span> Font Awesome fontawesome.com --></a>
                  </li>
                </ul>
            </div>
          </div>
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

    <script src="bonus/js/popper.min.js"></script>
    <script src="bonus/js/bootstrap.min.js"></script>
    <script src="bonus/js/anchor.min.js"></script>
    <script src="bonus/js/is.min.js"></script>
    <script src="bonus/js/all.min.js"></script>
    <script src="bonus/js/lodash.min.js"></script>
    <script src="bonus/js/polyfill.min.js"></script>
    <script src="bonus/js/list.min.js"></script>
    <script src="bonus/js/feather.min.js"></script>
    <script src="bonus/js/dayjs.min.js"></script>
    <script src="bonus/tinymce/tinymce.min.js"></script>
    <script src="bonus/js/dropzone.min.js"></script>
    <script src="bonus/js/choises.min.js"></script>
    <script src="bonus/js/phoenix.js"></script>
    <script src="bonus/js/phoenix1.js"></script>
    <script src="bonus/js/theme.min.js"></script>
    <script src="bonus/js/docs.js"></script>
    <script src="bonus/js/utils.js"></script>
    <script src="bonus/js/image.js"></script>
    

<!-- Apex Chart -->
<script src="assets/js/plugins/apexcharts.min.js"></script>
<!-- custom-chart js -->
<script src="assets/js/pages/dashboard-sale.js"></script>
</body>

</html>
