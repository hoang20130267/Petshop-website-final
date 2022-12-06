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
                            <li class="breadcrumb-item">Quản lý sản phẩm</li>
                            <li class="breadcrumb-item">Thú cưng</li>
                            <li class="breadcrumb-item">Thêm thú cưng</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
    <main class="main" id="top">
        <div class="container-fluid px-0" data-layout="container">
        
          <!-- <div class="content"> -->
            
            <form class="mb-9">
              <div class="row g-3 flex-between-end mb-5">
                <div class="col-auto">
                  <h2 class="mb-2">Thêm thú cưng</h2>
                  <!-- <h5 class="text-700 fw-semi-bold">
                    Orders placed across your store
                  </h5> -->
                </div>
                <div class="col-auto">
                  <button class="btn btn-phoenix-secondary me-2 mb-2 mb-sm-0">
                    Xóa dữ liệu</button
                  ><button class="btn btn-phoenix-primary me-2 mb-2 mb-sm-0">
                    Lưu dữ liệu</button
                  ><button class="btn btn-primary mb-2 mb-sm-0" type="submit">
                    Đăng thú cưng
                  </button>
                </div>
              </div>
              <h4 class="mb-3">Tên thú cưng</h4>
              <div class="row g-5">
                <div class="col-12 col-xl-8">
                  <input
                    class="form-control mb-5"
                    type="text"
                    placeholder="Viết tên thú cưng tại đây..."
                  />
                  <div class="mb-6">
                    <h4 class="mb-3">Chi tiết thú cưng</h4>
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
                  <h4 class="mb-3">Thêm ảnh</h4>
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
                      kéo ảnh vào đây <span class="text-800">hoặc </span
                      ><button class="btn btn-link p-0" type="button">
                        tìm trong thiết bị</button
                      ><br /><img
                        class="mt-3 me-2"
                        src="../../../assets/img/icons/image-icon.png"
                        width="40"
                        alt=""
                      />
                    </div>
                  </div>
                  <h4 class="mb-3">Danh mục</h4>
                  <div class="row g-0 border-top border-bottom border-300">
                    <div class="col-sm-4">
                      <div
                        class="nav flex-sm-column border-bottom border-bottom-sm-0 border-end-sm border-300 fs--1 vertical-tab h-100 justify-content-between"
                        role="tablist"
                        aria-orientation="vertical"
                      >
                        <a
                          class="nav-link border-end border-end-sm-0 border-bottom-sm border-300 text-center text-sm-start cursor-pointer outline-none d-sm-flex align-items-sm-center active"
                          id="pricingTab"
                          data-bs-toggle="tab"
                          data-bs-target="#pricingTabContent"
                          role="tab"
                          aria-controls="pricingTabContent"
                          aria-selected="true"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="16px"
                            height="16px"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="currentColor"
                            stroke-width="2"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            class="feather feather-tag me-sm-2 fs-4 nav-icons"
                          >
                            <path
                              d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"
                            ></path>
                            <line x1="7" y1="7" x2="7.01" y2="7"></line>
                          </svg>
                          <sapn class="d-none d-sm-inline">Giá bán</sapn> </a
                        ><a
                          class="nav-link border-end border-end-sm-0 border-bottom-sm border-300 text-center text-sm-start cursor-pointer outline-none d-sm-flex align-items-sm-center"
                          id="restockTab"
                          data-bs-toggle="tab"
                          data-bs-target="#restockTabContent"
                          role="tab"
                          aria-controls="restockTabContent"
                          aria-selected="false"
                          tabindex="-1"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="16px"
                            height="16px"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="currentColor"
                            stroke-width="2"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            class="feather feather-package me-sm-2 fs-4 nav-icons"
                          >
                            <line x1="16.5" y1="9.4" x2="7.5" y2="4.21"></line>
                            <path
                              d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"
                            ></path>
                            <polyline
                              points="3.27 6.96 12 12.01 20.73 6.96"
                            ></polyline>
                            <line x1="12" y1="22.08" x2="12" y2="12"></line></svg><span class="d-none d-sm-inline">Số lượng</span></a
                        >
                        
                        <a
                          class="nav-link border-end border-end-sm-0 border-bottom-sm border-300 text-center text-sm-start cursor-pointer outline-none d-sm-flex align-items-sm-center"
                          id="attributesTab"
                          data-bs-toggle="tab"
                          data-bs-target="#attributesTabContent"
                          role="tab"
                          aria-controls="attributesTabContent"
                          aria-selected="false"
                          tabindex="-1"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="16px"
                            height="16px"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="currentColor"
                            stroke-width="2"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            class="feather feather-sliders me-sm-2 fs-4 nav-icons"
                          >
                            <line x1="4" y1="21" x2="4" y2="14"></line>
                            <line x1="4" y1="10" x2="4" y2="3"></line>
                            <line x1="12" y1="21" x2="12" y2="12"></line>
                            <line x1="12" y1="8" x2="12" y2="3"></line>
                            <line x1="20" y1="21" x2="20" y2="16"></line>
                            <line x1="20" y1="12" x2="20" y2="3"></line>
                            <line x1="1" y1="14" x2="7" y2="14"></line>
                            <line x1="9" y1="8" x2="15" y2="8"></line>
                            <line x1="17" y1="16" x2="23" y2="16"></line></svg><span class="d-none d-sm-inline">Danh mục</span></a
                        ><a
                          class="nav-link text-center text-sm-start cursor-pointer outline-none d-sm-flex align-items-sm-center"
                          id="advancedTab"
                          data-bs-toggle="tab"
                          data-bs-target="#advancedTabContent"
                          role="tab"
                          aria-controls="advancedTabContent"
                          aria-selected="false"
                          tabindex="-1"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="16px"
                            height="16px"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="currentColor"
                            stroke-width="2"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            class="feather feather-lock me-sm-2 fs-4 nav-icons"
                          >
                            <rect
                              x="3"
                              y="11"
                              width="18"
                              height="11"
                              rx="2"
                              ry="2"
                            ></rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg><span class="d-none d-sm-inline">Nâng cao</span></a
                        >
                      </div>
                    </div>
                    <div class="col-sm-8">
                      <div class="tab-content py-3 ps-sm-4 h-100" id="pricingTab">
                        <div
                          class="tab-pane fade show active"
                          id="pricingTabContent"
                          role="tabpanel"
                          aria-labelledby="homeTab"
                        >
                          <h4 class="mb-3 d-sm-none">Giá</h4>
                          <div class="row g-3">
                            <div class="col-12 col-lg-6">
                              <h5 class="mb-2">Giá tiền gốc</h5>
                              <input
                                class="form-control"
                                type="text"
                                placeholder="Đồng"
                              />
                            </div>
                            <div class="col-12 col-lg-6">
                              <h5 class="mb-2">Giá tiền đã giảm</h5>
                              <input
                                class="form-control"
                                type="text"
                                placeholder="Đồng"
                              />
                            </div>
                          </div>
                        </div>
                        <div
                          class="tab-pane fade h-100"
                          id="restockTabContent"
                          role="tabpanel"
                          aria-labelledby="restockTab"
                        >
                          <div class="d-flex flex-column h-100">
                            <h5 class="mb-3 text-1000">Thêm số lượng</h5>
                            <div class="row g-3 flex-1 mb-4">
                              <div class="col-sm-7">
                                <input
                                  class="form-control"
                                  id="inventory"
                                  type="number"
                                  placeholder="Số lượng"
                                />
                              </div>
                              <div class="col-sm">
                                <button class="btn btn-primary">
                                  <svg
                                    class="svg-inline--fa fa-check me-1 fs--2"
                                    aria-hidden="true"
                                    focusable="false"
                                    data-prefix="fas"
                                    data-icon="check"
                                    role="img"
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 448 512"
                                    data-fa-i2svg=""
                                  >
                                    <path
                                      fill="currentColor"
                                      d="M438.6 105.4C451.1 117.9 451.1 138.1 438.6 150.6L182.6 406.6C170.1 419.1 149.9 419.1 137.4 406.6L9.372 278.6C-3.124 266.1-3.124 245.9 9.372 233.4C21.87 220.9 42.13 220.9 54.63 233.4L159.1 338.7L393.4 105.4C405.9 92.88 426.1 92.88 438.6 105.4H438.6z"
                                    ></path></svg>Xác nhận
                                </button>
                              </div>
                            </div>
                            <!-- <table>
                              <thead>
                                <tr>
                                  <th style="width: 200px"></th>
                                  <th></th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td class="text-1000 fw-bold py-1">
                                    Số thú cưng có sẵn:
                                  </td>
                                  <td class="text-700 fw-semi-bold py-1">
                                    38<button class="btn p-0" type="button">
                                      <svg
                                        class="svg-inline--fa fa-rotate text-900 ms-1"
                                        style="--phoenix-text-opacity: 0.6"
                                        aria-hidden="true"
                                        focusable="false"
                                        data-prefix="fas"
                                        data-icon="rotate"
                                        role="img"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 512 512"
                                        data-fa-i2svg=""
                                      >
                                        <path
                                          fill="currentColor"
                                          d="M449.9 39.96l-48.5 48.53C362.5 53.19 311.4 32 256 32C161.5 32 78.59 92.34 49.58 182.2c-5.438 16.81 3.797 34.88 20.61 40.28c16.97 5.5 34.86-3.812 40.3-20.59C130.9 138.5 189.4 96 256 96c37.96 0 73 14.18 100.2 37.8L311.1 178C295.1 194.8 306.8 223.4 330.4 224h146.9C487.7 223.7 496 215.3 496 204.9V59.04C496 34.99 466.9 22.95 449.9 39.96zM441.8 289.6c-16.94-5.438-34.88 3.812-40.3 20.59C381.1 373.5 322.6 416 256 416c-37.96 0-73-14.18-100.2-37.8L200 334C216.9 317.2 205.2 288.6 181.6 288H34.66C24.32 288.3 16 296.7 16 307.1v145.9c0 24.04 29.07 36.08 46.07 19.07l48.5-48.53C149.5 458.8 200.6 480 255.1 480c94.45 0 177.4-60.34 206.4-150.2C467.9 313 458.6 294.1 441.8 289.6z"
                                        ></path></svg>
                                    </button>
                                  </td>
                                </tr>
                                <tr>
                                  <td class="text-1000 fw-bold py-1">
                                    Số thú cưng trong kho:
                                  </td>
                                  <td class="text-700 fw-semi-bold py-1">5000</td>
                                </tr>
                                <tr>
                                  <td class="text-1000 fw-bold py-1">
                                    Last time restocked:
                                  </td>
                                  <td class="text-700 fw-semi-bold py-1">
                                    30th June, 2021
                                  </td>
                                </tr>
                                <tr>
                                  <td class="text-1000 fw-bold">
                                    Total stock over lifetime:
                                  </td>
                                  <td class="text-700 fw-semi-bold">20,000</td>
                                </tr>
                              </tbody>
                            </table> -->
                          </div>
                        </div>
                        <!-- <div
                          class="tab-pane fade h-100"
                          id="shippingTabContent"
                          role="tabpanel"
                          aria-labelledby="shippingTab"
                        >
                          <div class="d-flex flex-column h-100">
                            <h5 class="mb-3 text-1000">Shipping Type</h5>
                            <div class="flex-1">
                              <div class="mb-4">
                                <div class="form-check mb-1">
                                  <input
                                    class="form-check-input"
                                    type="radio"
                                    name="shippingRadio"
                                    id="fullfilledBySeller"
                                  /><label
                                    class="form-check-label fs-0 text-900"
                                    for="fullfilledBySeller"
                                    >Fullfilled by Seller</label
                                  >
                                </div>
                                <div class="ps-4">
                                  <p class="text-800 fs--1 mb-0">
                                    You’ll be responsible for product delivery.
                                    <br />Any damage or delay during shipping may
                                    cost you a Damage fee.
                                  </p>
                                </div>
                              </div>
                              <div class="mb-4">
                                <div class="form-check mb-1">
                                  <input
                                    class="form-check-input"
                                    type="radio"
                                    name="shippingRadio"
                                    id="fullfilledByPhoenix"
                                    checked="checked"
                                  /><label
                                    class="form-check-label fs-0 text-900 d-flex align-items-center"
                                    for="fullfilledByPhoenix"
                                    >Fullfilled by Phoenix
                                    <span
                                      class="badge badge-phoenix-warning fs--2 ms-2"
                                      >Recommended</span
                                    ></label
                                  >
                                </div>
                                <div class="ps-4">
                                  <p class="text-800 fs--1 mb-0">
                                    Your product, Our responsibility.<br />For a
                                    measly fee, we will handle the delivery
                                    process for you.
                                  </p>
                                </div>
                              </div>
                            </div>
                            <p class="fs--1 fw-semi-bold mb-0">
                              See our
                              <a class="fw-bold" href="#!"
                                >Delivery terms and conditions </a
                              >for details.
                            </p>
                          </div>
                        </div>
                        <div
                          class="tab-pane fade"
                          id="productsTabContent"
                          role="tabpanel"
                          aria-labelledby="productsTab"
                        >
                          <h5 class="mb-3 text-1000">Global Delivery</h5>
                          <div class="mb-4">
                            <div class="form-check">
                              <input
                                class="form-check-input"
                                type="radio"
                                name="deliveryRadio"
                                id="worldwideDelivery"
                              /><label
                                class="form-check-label fs-0 text-900"
                                for="worldwideDelivery"
                                >Worldwide delivery</label
                              >
                            </div>
                            <div class="ps-4">
                              <p class="fs--1 mb-0">
                                Only available with Shipping method:
                                <a href="#!">Fullfilled by Phoenix</a>
                              </p>
                            </div>
                          </div>
                          <div class="mb-4">
                            <div class="form-check">
                              <input
                                class="form-check-input"
                                type="radio"
                                name="deliveryRadio"
                                checked="checked"
                                id="selectedCountry"
                              /><label
                                class="form-check-label fs-0 text-900"
                                for="selectedCountry"
                                >Selected Countries</label
                              >
                            </div>
                            <div class="ps-4" style="max-width: 350px">
                              <div
                                class="choices"
                                data-type="select-multiple"
                                role="combobox"
                                aria-autocomplete="list"
                                aria-haspopup="true"
                                aria-expanded="false"
                              >
                                <div class="choices__inner">
                                  <select
                                    class="form-select ps-4 choices__input"
                                    id="organizerMultiple"
                                    data-choices="data-choices"
                                    multiple="multiple"
                                    data-options='{"removeItemButton":true,"placeholder":true}'
                                    hidden=""
                                    tabindex="-1"
                                    data-choice="active"
                                  ></select>
                                  <div
                                    class="choices__list choices__list--multiple"
                                  ></div>
                                  <input
                                    type="text"
                                    class="choices__input choices__input--cloned"
                                    autocomplete="off"
                                    autocapitalize="off"
                                    spellcheck="false"
                                    role="textbox"
                                    aria-autocomplete="list"
                                    aria-label="Type Country name"
                                    placeholder="Type Country name"
                                    style="min-width: 18ch; width: 1ch"
                                  />
                                </div>
                                <div
                                  class="choices__list choices__list--dropdown"
                                  aria-expanded="false"
                                >
                                  <div
                                    class="choices__list"
                                    aria-multiselectable="true"
                                    role="listbox"
                                  >
                                    <div
                                      id="choices--organizerMultiple-item-choice-1"
                                      class="choices__item choices__item--choice choices__item--selectable is-highlighted"
                                      role="option"
                                      data-choice=""
                                      data-id="1"
                                      data-value="Canada"
                                      data-select-text=""
                                      data-choice-selectable=""
                                      aria-selected="true"
                                    >
                                      Canada
                                    </div>
                                    <div
                                      id="choices--organizerMultiple-item-choice-2"
                                      class="choices__item choices__item--choice choices__item--selectable"
                                      role="option"
                                      data-choice=""
                                      data-id="2"
                                      data-value="Mexico"
                                      data-select-text=""
                                      data-choice-selectable=""
                                    >
                                      Mexico
                                    </div>
                                    <div
                                      id="choices--organizerMultiple-item-choice-4"
                                      class="choices__item choices__item--choice choices__item--selectable"
                                      role="option"
                                      data-choice=""
                                      data-id="4"
                                      data-value="United Kingdom"
                                      data-select-text=""
                                      data-choice-selectable=""
                                    >
                                      United Kingdom
                                    </div>
                                    <div
                                      id="choices--organizerMultiple-item-choice-5"
                                      class="choices__item choices__item--choice choices__item--selectable"
                                      role="option"
                                      data-choice=""
                                      data-id="5"
                                      data-value="United States of America"
                                      data-select-text=""
                                      data-choice-selectable=""
                                    >
                                      United States of America
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div>
                            <div class="form-check">
                              <input
                                class="form-check-input"
                                type="radio"
                                name="deliveryRadio"
                                id="localDelivery"
                              /><label
                                class="form-check-label fs-0 text-900"
                                for="localDelivery"
                                >Local delivery</label
                              >
                            </div>
                            <p class="fs--1 ms-4 mb-0">
                              Deliver to your country of residence
                              <a href="#!">Change profile address </a>
                            </p>
                          </div>
                        </div> -->
                        <div
                          class="tab-pane fade"
                          id="attributesTabContent"
                          role="tabpanel"
                          aria-labelledby="attributesTab"
                        >
                          <h5 class="mb-3 text-1000">Chi tiết</h5>
                          <div class="form-check">
                            <input
                              class="form-check-input"
                              id="fragileCheck"
                              type="checkbox"
                            /><label
                              class="form-check-label text-900 fs-0"
                              for="fragileCheck"
                              >Chó</label
                            >
                          </div>
                          <div class="form-check">
                            <input
                              class="form-check-input"
                              id="biodegradableCheck"
                              type="checkbox"
                            /><label
                              class="form-check-label text-900 fs-0"
                              for="biodegradableCheck"
                              >Mèo</label
                            >
                          </div>
                          <div class="mb-3">
                            <div class="form-check">
                              <input
                              class="form-check-input"
                              id="biodegradableCheck"
                              type="checkbox"
                            /><label
                              class="form-check-label text-900 fs-0"
                              for="biodegradableCheck"
                              >Phụ kiện</label
                            ><input
                                class="form-control"
                                type="text"
                                placeholder="Điền tên phụ kiện"
                                style="max-width: 350px"
                              />
                            </div>
                          </div>
                          <div class="form-check">
                            <input
                              class="form-check-input"
                              id="productCheck"
                              type="checkbox"
                              checked="checked"
                            /><label
                              class="form-check-label text-900 fs-0"
                              for="productCheck"
                              >Ngày nhập thú cưng</label
                            ><input
                              class="form-control inventory-attributes"
                              id="inventory"
                              type="date"
                              style="max-width: 350px"
                            />
                          </div>
                        </div>
                        <div
                          class="tab-pane fade"
                          id="advancedTabContent"
                          role="tabpanel"
                          aria-labelledby="advancedTab"
                        >
                          <h5 class="mb-3 text-1000">Nâng cao</h5>
                          <div class="row g-3">
                            <div class="col-12 col-lg-6">
                              <h5 class="mb-2 text-1000">Đơn vị vận chuyển</h5>
                              <select
                                class="form-select"
                                aria-label="form-select-lg example"
                              >
                                <option selected="selected">Giao hàng tiết kiệm</option>
                                <option value="1">Giao hàng nhanh</option>
                                <option value="2">Hỏa tốc</option>
                                
                              </select>
                            </div>
                            <div class="col-12 col-lg-6">
                              <h5 class="mb-2 text-1000">ID thú cưng</h5>
                              <input
                                class="form-control"
                                type="text"
                                placeholder="Số ID"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-xl-4">
                  <div class="row g-2">
                    <div class="col-12 col-xl-12">
                      <div class="card mb-3">
                        <div class="card-body">
                          <h4 class="card-title mb-4">Danh mục</h4>
                          <div class="row">
                            <div class="col-12 col-sm-6 col-xl-12">
                              <div class="mb-4">
                                <div class="d-flex flex-wrap justify-content-between mb-2">
                                  <h5>Loại chó</h5><a class="fw-bold fs--1" href="#!">Thêm chủng loại mới</a>
                                </div><select class="form-select mb-3" aria-label="category">
                                  <option value="men-cloth">Không</option>
                                  <option value="men-cloth">Chó Alaska</option>
                                  <option value="women-cloth">Chó Beagle</option>
                                  <option value="kid-cloth">Chó Corgi</option>
                                  <option value="men-cloth">Chó Golden Retriever</option>
                                  <option value="women-cloth">Chó Husky</option>
                                  <option value="kid-cloth">Chó Phốc sóc</option>
                                  
                                </select>
                              </div>
                            </div>
                            <div class="col-12 col-sm-6 col-xl-12">
                              <div class="mb-4">
                                <div class="d-flex flex-wrap justify-content-between mb-2">
                                  <h5>Loại mèo</h5><a class="fw-bold fs--1" href="#!">Thêm chủng loại mới</a>
                                </div><select class="form-select mb-3" aria-label="category">
                                  <option value="men-cloth">Không</option>
                                  <option value="men-cloth">Mèo Anh</option>
                                  <option value="women-cloth">Mèo lông ngắn</option>
                                  <option value="kid-cloth">Mèo chân ngắn</option>
                                  <option value="women-cloth">Mèo tai cụp</option>
                                  <option value="kid-cloth">Mèo tam thể</option>
                                </select>
                              </div>
                            </div>
                            <div class="col-12 col-sm-6 col-xl-12">
                              <div class="mb-4">
                                <h5 class="mb-2">Phụ kiện (nếu có)</h5><input class="form-control mb-3" type="text" placeholder="Phụ kiện">
                              </div>
                            </div>
                            <div class="col-12 col-sm-6 col-xl-12">
                              <div>
                                <div class="d-flex flex-wrap justify-content-between mb-2">
                                  <h5>Tags</h5><a class="fw-bold fs--1" href="#!">Thêm tag mới</a>
                                </div><select class="form-select" aria-label="category">
                                  <option value="men-cloth">Chó</option>
                                  <option value="women-cloth">Mèo</option>
                                  
                                </select>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-12 col-xl-12">
                      <div class="card">
                        <div class="card-body">
                          <h4 class="card-title mb-4">Kích cỡ thú cưng</h4>
                          <div class="row">
                            <div class="col-12 col-sm-6 col-xl-12">
                              <div class="mb-4 border-dashed-bottom pb-4">
                                <div class="d-flex flex-wrap justify-content-between mb-2">
                                  <h5>Kích cỡ</h5><a class="fw-bold fs--1" href="#!">Loại bỏ</a>
                                </div><select class="form-select mb-3">
                                  <option value="size">Nhỏ</option>
                                  <option value="color">Vừa</option>
                                  <option value="weight">Lớn</option>
                                </select>
                                <div class="product-variant-select-menu"><div class="choices" data-type="select-multiple" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false"><div class="choices__inner"><select class="form-select mb-3 choices__input" data-choices="data-choices" multiple="multiple" data-options="{&quot;removeItemButton&quot;:true,&quot;placeholder&quot;:true}" hidden="" tabindex="-1" data-choice="active"></select><div class="choices__list choices__list--multiple"></div><input type="text" class="choices__input choices__input--cloned" autocomplete="off" autocapitalize="off" spellcheck="false" role="textbox" aria-autocomplete="list" aria-label="null"></div><div class="choices__list choices__list--dropdown" aria-expanded="false"><div class="choices__list" aria-multiselectable="true" role="listbox"><div id="choices--avi3-item-choice-1" class="choices__item choices__item--choice choices__item--selectable is-highlighted" role="option" data-choice="" data-id="1" data-value="size" data-select-text="" data-choice-selectable="" aria-selected="true">4x6 in</div><div id="choices--avi3-item-choice-2" class="choices__item choices__item--choice choices__item--selectable" role="option" data-choice="" data-id="2" data-value="color" data-select-text="" data-choice-selectable="">9x6 in</div><div id="choices--avi3-item-choice-3" class="choices__item choices__item--choice choices__item--selectable" role="option" data-choice="" data-id="3" data-value="weight" data-select-text="" data-choice-selectable="">11x8 in</div></div></div></div></div>
                              </div>
                            </div>
                            <!-- <div class="col-12 col-sm-6 col-xl-12">
                              <div class="mb-4">
                                <div class="d-flex flex-wrap justify-content-between mb-2">
                                  <h5>Option 2</h5><a class="fw-bold fs--1" href="#!">Remove</a>
                                </div><select class="form-select mb-3">
                                  <option value="size">Size</option>
                                  <option value="color">Color</option>
                                  <option value="weight">Weight</option>
                                  <option value="smell">Smell</option>
                                </select>
                                <div class="product-variant-select-menu"><div class="choices" data-type="select-multiple" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false"><div class="choices__inner"><select class="form-select mb-3 choices__input" data-choices="data-choices" multiple="multiple" data-options="{&quot;removeItemButton&quot;:true,&quot;placeholder&quot;:true}" hidden="" tabindex="-1" data-choice="active"></select><div class="choices__list choices__list--multiple"></div><input type="text" class="choices__input choices__input--cloned" autocomplete="off" autocapitalize="off" spellcheck="false" role="textbox" aria-autocomplete="list" aria-label="null"></div><div class="choices__list choices__list--dropdown" aria-expanded="false"><div class="choices__list" aria-multiselectable="true" role="listbox"><div id="choices--6iud-item-choice-1" class="choices__item choices__item--choice choices__item--selectable is-highlighted" role="option" data-choice="" data-id="1" data-value="size" data-select-text="" data-choice-selectable="" aria-selected="true">4x6 in</div><div id="choices--6iud-item-choice-2" class="choices__item choices__item--choice choices__item--selectable" role="option" data-choice="" data-id="2" data-value="color" data-select-text="" data-choice-selectable="">9x6 in</div><div id="choices--6iud-item-choice-3" class="choices__item choices__item--choice choices__item--selectable" role="option" data-choice="" data-id="3" data-value="weight" data-select-text="" data-choice-selectable="">11x8 in</div></div></div></div></div>
                              </div>
                            </div> -->
                          </div><button class="btn btn-phoenix-primary w-100">Xác nhận</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
            </form>
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
