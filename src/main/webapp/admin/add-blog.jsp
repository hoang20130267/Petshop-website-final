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
                        
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">Quản lý tin tức</li>
                            <li class="breadcrumb-item">Tin tức</li>
                            <li class="breadcrumb-item">Thêm tin tức</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
    <main class="main" id="top">
              <div class="">
                <div class="col-auto">
                  <h2 class="" style="text-align: center; margin: 10px 0px 20px;">Thêm tin tức mới</h2>
                  <h5 class="text-900 fw-semi-bold" style="text-align: center;">
                    
                  </h5>
                </div>
              </div>
              <h4 class="mb-3">Tên bài viết</h4>
              <div class="row g-5">
                <div class="">
                  <input
                    class="form-control mb-5"
                    type="text"
                    placeholder="Viết tên tin tức tại đây..."
                  />
                  <h4 class="mb-3">Hình ảnh minh họa</h4>
                  <div
                    class="dropzone dropzone-multiple p-0 mb-5 dz-clickable"
                    id="my-awesome-dropzone"
                    data-dropzone="data-dropzone"
                  >
                    <div class="dz-preview d-flex flex-wrap"></div>
                    <div
                      class="dz-message text-600"
                      data-dz-message="data-dz-message"
                    >
                      Kéo hình ảnh vào đây <span class="text-800">hoặc </span
                      ><button class="btn btn-link p-0" type="button">
                        Tìm trong thiết bị</button
                      ><br /><img
                        class="mt-3 me-2"
                        src="../../../assets/img/icons/image-icon.png"
                        width="40"
                        alt=""
                      />
                    </div>
                  </div>
                  <div class="mb-6">
                    <h4 class="mb-3">Chi tiết tin tức</h4>
                    <textarea
                      class="tinymce"
                      name="content"
                      data-tinymce='{"height":"15rem","placeholder":"Write a description here..."}'
                      id="mce_0"
                      aria-hidden="true"
                      style="display: none"
                    ></textarea>
                    <div
                      role="application"
                      class="tox tox-tinymce"
                      aria-disabled="false"
                      style="visibility: hidden; height: 15rem"
                    >
                    
                      <div class="tox-editor-container">
                        <div
                          data-alloy-vertical-dir="toptobottom"
                          class="tox-editor-header"
                        >
                          <div
                            role="group"
                            class="tox-toolbar-overlord"
                            aria-disabled="false"
                          >
                            <div role="group" class="tox-toolbar__primary">
                              <div
                                title="history"
                                role="toolbar"
                                data-alloy-tabstop="true"
                                tabindex="-1"
                                class="tox-toolbar__group"
                              >
                                <button
                                  aria-label="Undo"
                                  title="Undo"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn tox-tbtn--disabled"
                                  aria-disabled="true"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M6.4 8H12c3.7 0 6.2 2 6.8 5.1.6 2.7-.4 5.6-2.3 6.8a1 1 0 0 1-1-1.8c1.1-.6 1.8-2.7 1.4-4.6-.5-2.1-2.1-3.5-4.9-3.5H6.4l3.3 3.3a1 1 0 1 1-1.4 1.4l-5-5a1 1 0 0 1 0-1.4l5-5a1 1 0 0 1 1.4 1.4L6.4 8Z"
                                        fill-rule="nonzero"
                                      ></path></svg></span></button><button
                                  aria-label="Redo"
                                  title="Redo"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn tox-tbtn--disabled"
                                  aria-disabled="true"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M17.6 10H12c-2.8 0-4.4 1.4-4.9 3.5-.4 2 .3 4 1.4 4.6a1 1 0 1 1-1 1.8c-2-1.2-2.9-4.1-2.3-6.8.6-3 3-5.1 6.8-5.1h5.6l-3.3-3.3a1 1 0 1 1 1.4-1.4l5 5a1 1 0 0 1 0 1.4l-5 5a1 1 0 0 1-1.4-1.4l3.3-3.3Z"
                                        fill-rule="nonzero"
                                      ></path></svg></span>
                                </button>
                              </div>
                              <div
                                title="formatting"
                                role="toolbar"
                                data-alloy-tabstop="true"
                                tabindex="-1"
                                class="tox-toolbar__group"
                              >
                                <button
                                  aria-label="Bold"
                                  title="Bold"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M7.8 19c-.3 0-.5 0-.6-.2l-.2-.5V5.7c0-.2 0-.4.2-.5l.6-.2h5c1.5 0 2.7.3 3.5 1 .7.6 1.1 1.4 1.1 2.5a3 3 0 0 1-.6 1.9c-.4.6-1 1-1.6 1.2.4.1.9.3 1.3.6s.8.7 1 1.2c.4.4.5 1 .5 1.6 0 1.3-.4 2.3-1.3 3-.8.7-2.1 1-3.8 1H7.8Zm5-8.3c.6 0 1.2-.1 1.6-.5.4-.3.6-.7.6-1.3 0-1.1-.8-1.7-2.3-1.7H9.3v3.5h3.4Zm.5 6c.7 0 1.3-.1 1.7-.4.4-.4.6-.9.6-1.5s-.2-1-.7-1.4c-.4-.3-1-.4-2-.4H9.4v3.8h4Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span></button
                                ><button
                                  aria-label="Italic"
                                  title="Italic"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="m16.7 4.7-.1.9h-.3c-.6 0-1 0-1.4.3-.3.3-.4.6-.5 1.1l-2.1 9.8v.6c0 .5.4.8 1.4.8h.2l-.2.8H8l.2-.8h.2c1.1 0 1.8-.5 2-1.5l2-9.8.1-.5c0-.6-.4-.8-1.4-.8h-.3l.2-.9h5.8Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span></button
                                ><button
                                  aria-label="Underline"
                                  title="Underline"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M16 5c.6 0 1 .4 1 1v5.5a4 4 0 0 1-.4 1.8l-1 1.4a5.3 5.3 0 0 1-5.5 1 5 5 0 0 1-1.6-1c-.5-.4-.8-.9-1.1-1.4a4 4 0 0 1-.4-1.8V6c0-.6.4-1 1-1s1 .4 1 1v5.5c0 .3 0 .6.2 1l.6.7a3.3 3.3 0 0 0 2.2.8 3.4 3.4 0 0 0 2.2-.8c.3-.2.4-.5.6-.8l.2-.9V6c0-.6.4-1 1-1ZM8 17h8c.6 0 1 .4 1 1s-.4 1-1 1H8a1 1 0 0 1 0-2Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span></button
                                ><button
                                  aria-label="Strikethrough"
                                  title="Strikethrough"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <g fill-rule="evenodd">
                                        <path
                                          d="M15.6 8.5c-.5-.7-1-1.1-1.3-1.3-.6-.4-1.3-.6-2-.6-2.7 0-2.8 1.7-2.8 2.1 0 1.6 1.8 2 3.2 2.3 4.4.9 4.6 2.8 4.6 3.9 0 1.4-.7 4.1-5 4.1A6.2 6.2 0 0 1 7 16.4l1.5-1.1c.4.6 1.6 2 3.7 2 1.6 0 2.5-.4 3-1.2.4-.8.3-2-.8-2.6-.7-.4-1.6-.7-2.9-1-1-.2-3.9-.8-3.9-3.6C7.6 6 10.3 5 12.4 5c2.9 0 4.2 1.6 4.7 2.4l-1.5 1.1Z"
                                        ></path>
                                        <path
                                          d="M5 11h14a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"
                                          fill-rule="nonzero"
                                        ></path>
                                      </g></svg></span>
                                </button>
                              </div>
                              <div
                                title="alignment"
                                role="toolbar"
                                data-alloy-tabstop="true"
                                tabindex="-1"
                                class="tox-toolbar__group"
                              >
                                <button
                                  aria-label="Align left"
                                  title="Align left"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 1 1 0-2Zm0 4h8c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 1 1 0-2Zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 0 1 0-2Zm0-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 0 1 0-2Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span></button
                                ><button
                                  aria-label="Align center"
                                  title="Align center"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 1 1 0-2Zm3 4h8c.6 0 1 .4 1 1s-.4 1-1 1H8a1 1 0 1 1 0-2Zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1H8a1 1 0 0 1 0-2Zm-3-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 0 1 0-2Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span></button
                                ><button
                                  aria-label="Align right"
                                  title="Align right"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 1 1 0-2Zm6 4h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 0 1 0-2Zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 0 1 0-2Zm-6-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 0 1 0-2Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span></button
                                ><button
                                  aria-label="Justify"
                                  title="Justify"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 1 1 0-2Zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 1 1 0-2Zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 0 1 0-2Zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 0 1 0-2Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span>
                                </button>
                              </div>
                              <div
                                title="list"
                                role="toolbar"
                                data-alloy-tabstop="true"
                                tabindex="-1"
                                class="tox-toolbar__group"
                              >
                                <button
                                  aria-label="Numbered list"
                                  title="Numbered list"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M10 17h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 0 1 0-2Zm0-6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 0 1 0-2Zm0-6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 1 1 0-2ZM6 4v3.5c0 .3-.2.5-.5.5a.5.5 0 0 1-.5-.5V5h-.5a.5.5 0 0 1 0-1H6Zm-1 8.8.2.2h1.3c.3 0 .5.2.5.5s-.2.5-.5.5H4.9a1 1 0 0 1-.9-1V13c0-.4.3-.8.6-1l1.2-.4.2-.3a.2.2 0 0 0-.2-.2H4.5a.5.5 0 0 1-.5-.5c0-.3.2-.5.5-.5h1.6c.5 0 .9.4.9 1v.1c0 .4-.3.8-.6 1l-1.2.4-.2.3ZM7 17v2c0 .6-.4 1-1 1H4.5a.5.5 0 0 1 0-1h1.2c.2 0 .3-.1.3-.3 0-.2-.1-.3-.3-.3H4.4a.4.4 0 1 1 0-.8h1.3c.2 0 .3-.1.3-.3 0-.2-.1-.3-.3-.3H4.5a.5.5 0 1 1 0-1H6c.6 0 1 .4 1 1Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span></button
                                ><button
                                  aria-label="Bullet list"
                                  title="Bullet list"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M11 5h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 0 1 0-2Zm0 6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 0 1 0-2Zm0 6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 0 1 0-2ZM4.5 6c0-.4.1-.8.4-1 .3-.4.7-.5 1.1-.5.4 0 .8.1 1 .4.4.3.5.7.5 1.1 0 .4-.1.8-.4 1-.3.4-.7.5-1.1.5-.4 0-.8-.1-1-.4-.4-.3-.5-.7-.5-1.1Zm0 6c0-.4.1-.8.4-1 .3-.4.7-.5 1.1-.5.4 0 .8.1 1 .4.4.3.5.7.5 1.1 0 .4-.1.8-.4 1-.3.4-.7.5-1.1.5-.4 0-.8-.1-1-.4-.4-.3-.5-.7-.5-1.1Zm0 6c0-.4.1-.8.4-1 .3-.4.7-.5 1.1-.5.4 0 .8.1 1 .4.4.3.5.7.5 1.1 0 .4-.1.8-.4 1-.3.4-.7.5-1.1.5-.4 0-.8-.1-1-.4-.4-.3-.5-.7-.5-1.1Z"
                                        fill-rule="evenodd"
                                      ></path></svg></span>
                                </button>
                              </div>
                              <div
                                title="link"
                                role="toolbar"
                                data-alloy-tabstop="true"
                                tabindex="-1"
                                class="tox-toolbar__group"
                              >
                                <button
                                  aria-label="Insert/edit link"
                                  title="Insert/edit link"
                                  type="button"
                                  tabindex="-1"
                                  class="tox-tbtn"
                                  aria-disabled="false"
                                  aria-pressed="false"
                                >
                                  <span class="tox-icon tox-tbtn__icon-wrap"
                                    ><svg
                                      width="24"
                                      height="24"
                                      focusable="false"
                                    >
                                      <path
                                        d="M6.2 12.3a1 1 0 0 1 1.4 1.4l-2 2a2 2 0 1 0 2.6 2.8l4.8-4.8a1 1 0 0 0 0-1.4 1 1 0 1 1 1.4-1.3 2.9 2.9 0 0 1 0 4L9.6 20a3.9 3.9 0 0 1-5.5-5.5l2-2Zm11.6-.6a1 1 0 0 1-1.4-1.4l2-2a2 2 0 1 0-2.6-2.8L11 10.3a1 1 0 0 0 0 1.4A1 1 0 1 1 9.6 13a2.9 2.9 0 0 1 0-4L14.4 4a3.9 3.9 0 0 1 5.5 5.5l-2 2Z"
                                        fill-rule="nonzero"
                                      ></path></svg></span>
                                </button>
                              </div>
                            </div>
                          </div>
                          <div class="tox-anchorbar"></div>
                        </div>
                        <div class="tox-sidebar-wrap">
                          <div class="tox-edit-area">
                            <iframe
                              id="mce_0_ifr"
                              frameborder="0"
                              allowtransparency="true"
                              title="Rich Text Area"
                              class="tox-edit-area__iframe"
                              src="bonus/textarea.html"></iframe>
                          </div>
                          <div role="complementary" class="tox-sidebar">
                            <div
                              data-alloy-tabstop="true"
                              tabindex="-1"
                              class="tox-sidebar__slider tox-sidebar--sliding-closed"
                              style="width: 0px"
                            >
                              <div class="tox-sidebar__pane-container"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        aria-hidden="true"
                        class="tox-throbber"
                        style="display: none"
                      ></div>
                    </div>
                  </div>
                  <button type="submit" class="btn  btn-primary" style="margin-bottom: 50px;margin-right: 20px;float: right; padding:10px 40px 10px 40px; font-size: large;">Thêm tin tức</button>
          </div>
        </div>
      </main>
</div>

    <!-- Required Js -->
    <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/js/plugins/bootstrap.min.js"></script>
    <script src="assets/js/plugins/feather.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    <script src="assets/js/plugins/clipboard.min.js"></script>
    <script src="assets/js/uikit.min.js"></script>

    <script src="bonus/js/bootstrap.min.js"></script>
    <script src="bonus/js/lodash.min.js"></script>
    <script src="bonus/tinymce/tinymce.min.js"></script>
    <script src="bonus/js/dropzone.min.js"></script>
    <script src="bonus/js/phoenix.js"></script>
    

<!-- Apex Chart -->
<script src="assets/js/plugins/apexcharts.min.js"></script>
<!-- custom-chart js -->
<script src="assets/js/pages/dashboard-sale.js"></script>
</body>

</html>
