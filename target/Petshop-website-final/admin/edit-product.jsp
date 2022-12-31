<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description"
          content="DashboardKit is made using Bootstrap 5 design framework. Download the free admin template & use it for your project.">
    <meta name="keywords"
          content="DashboardKit, Dashboard Kit, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Free Bootstrap Admin Template">
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
    <link href="bonus/css/dropzone.min.css" rel="stylesheet"/>
    <link href="bonus/css/line.css" rel="stylesheet"/>
    <link href="bonus/css/choices.min.css" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
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
    <script type="text/javascript" src="<%=request.getContextPath()%>/libraries/ckeditor/ckeditor.js"></script>
    <style>
        .input-file::-webkit-file-upload-button {
            background: #00BFFF;
            border-radius: 50px;
            border: none;
            color: #fff;
            font-weight: 700;
            padding: 8px 25px;
            margin-right: 3px;
            transition: all 0.3s;
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
                    <a href="index.jsp" class="pc-link "><span class="pc-micon"><i
                            class="material-icons-two-tone">home</i></span><span
                            class="pc-mtext">Quản lý chung</span></a>
                </li>
                <li class="pc-item pc-caption">
                    <label>Quản lý sản phẩm</label>
                    <!-- <span>UI Components</span> -->
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i
                            data-feather="github">business_center</i></span><span class="pc-mtext">Thú cưng</span><span
                            class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="list-products">Danh sách thú cưng</a></li>
                        <li class="pc-item"><a class="pc-link" href="edit-product.jsp">Thêm thú cưng</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">business_center</i></span><span
                            class="pc-mtext">Phụ kiện</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="list-accessory">Danh sách phụ kiện</a></li>
                        <li class="pc-item"><a class="pc-link" href="edit-accessory.jsp">Thêm phụ kiện</a></li>
                    </ul>
                </li>
                <li class="pc-item">
                    <a href="products-status.jsp" class="pc-link "><span class="pc-micon"><i
                            class="material-icons-two-tone">history_edu</i></span><span class="pc-mtext">Tình trạng đơn hàng</span></a>
                </li>
                <li class="pc-item pc-caption">
                    <label>Quản lý tin tức</label>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone"
                                                                            data-feather="file-minus"></i></span><span
                            class="pc-mtext">Tin tức</span><span class="pc-arrow"><i
                            data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="list-blog.jsp">Danh sách tin tức</a></li>
                        <li class="pc-item"><a class="pc-link" href="add-blog.jsp">Thêm tin tức</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-caption">
                    <label>Quản lý danh mục</label>
                </li>
                <li class="pc-item">
                    <a href="list-category.jsp" class="pc-link "><span class="pc-micon"><i
                            class="material-icons-two-tone">history_edu</i></span><span class="pc-mtext">Danh sách danh mục</span></a>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone"
                                                                            data-feather="file-minus"></i></span><span
                            class="pc-mtext">Thêm danh mục</span><span class="pc-arrow"><i
                            data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="#">Danh mục sản phẩm</a></li>
                        <li class="pc-item"><a class="pc-link" href="#">Danh mục tin tức</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-caption">
                    <label>Tài khoản</label>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone"
                                                                            data-feather="cpu"></i></span><span
                            class="pc-mtext">Admin</span><span class="pc-arrow"><i
                            data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="list-admin.jsp">Danh sách admin</a></li>
                        <li class="pc-item"><a class="pc-link" href="add-admin.jsp">Thêm admin</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone"
                                                                            data-feather="user"></i></span><span
                            class="pc-mtext">Người dùng</span><span class="pc-arrow"><i
                            data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="list-user.jsp">Danh sách người dùng</a></li>
                        <li class="pc-item"><a class="pc-link" href="add-user.jsp">Thêm người dùng</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-caption">
                    <label>Quản lý bình luận</label>
                </li>
                <li class="pc-item">
                    <a href="list-comment.jsp" class="pc-link "><span class="pc-micon"><i data-feather="message-circle">history_edu</i></span><span
                            class="pc-mtext">Bình luận</span></a>
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
<%--                    <%--%>
<%--                        ProductDAO dao = new ProductDAO();--%>
<%--                        String pid = request.getParameter("pid");--%>
<%--                        Product p = dao.getProductById(pid);--%>
<%--                    %>--%>

                    <form name="item" method="post" enctype="multipart/form-data" class="mb-9">
                            <% Product p = null;
                            if (request.getParameter("pid") != null)
                            p = ProductService.getInstance().getProductDetail(request.getParameter("pid"));
                            %>

                        <div class="row g-3 flex-between-end mb-5">
                            <div class="col-auto">
                                <%if (request.getParameter("pid") != null) {%>

                                <h2 class="mb-2">Chỉnh sửa thú cưng</h2>
                                <%} else {%>
                                <h2 class="mb-2">Thêm thú cưng</h2>
                                <%}%>
                                <!-- <h5 class="text-700 fw-semi-bold">
                                  Orders placed across your store
                                </h5> -->
                            </div>
                            <div class="col-auto">
                                <button class="btn btn-phoenix-secondary me-2 mb-2 mb-sm-0">
                                    Xóa dữ liệu</button
                                >
                                <%if (request.getParameter("pid") != null) {%>
                                <button class="btn btn-primary mb-2 mb-sm-0" type="submit">
                                    Sửa thú cưng
                                </button>
                                <%} else {%>
                                <button class="btn btn-primary mb-2 mb-sm-0" type="submit">
                                    Đăng thú cưng
                                </button>
                                <%}%>
                            </div>
                        </div>

                                <input type="text" id="pid" name="pid"
                                       value="<%=(p != null) ? request.getParameter("pid") : ""%>"
                                       style="display: none">
                        <h4 class="mb-3">Tên thú cưng</h4>
                        <div class="row g-5">
                            <div class="col-12 col-xl-8">
                                <input name="name" id="name"
                                        class="form-control mb-5"
                                        type="text"
                                        placeholder="Viết tên thú cưng tại đây..." value="<%=(p != null) ? p.getProductName() : ""%>" required
                                />
                                <div class="mb-6">
                                    <h4 class="mb-3">Chi tiết thú cưng</h4>
                                    <textarea name="description" rows="20" cols="10" id="editor" required>
                                        <%=(p != null) ? p.getDescription() : ""%>
                                    </textarea>
                                    <script>
                                        CKEDITOR.replace('editor');
                                    </script>
                                                      </div>
                                    <h4 class="mb-3">Thêm ảnh</h4>
                                    <div
                                            class="dropzone dropzone-multiple p-0 mb-5 dz-clickable images-container"
                                            id="my-awesome-dropzone"
                                            data-dropzone="data-dropzone">

                                        <% int i = 0;
                                            if (p != null) {
                                            if (p.getImage() != null) {%>
                                    <div class="image-container">
                                        <div id="container<%=i%>" class="dz-message text-600" data-dz-message="data-dz-message">
                                            <div class="border bg-white rounded-3 d-flex flex-center position-relative me-2 mb-2 dz-image-preview" style="height:80px;width:80px;">
                                                <img class="img-product-review dz-image" src="<%=p.getImage()%>">
                                                <div class="control">
                                                <a id="remove<%=i%>" class="dz-remove text-400 remove" href="" data-dz-remove="">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16px" height="16px" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x">
                                                        <line x1="18" y1="6" x2="6" y2="18"></line>
                                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                                    </svg>
                                                </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        <%i++;
                                            }
                                        }%>

                                    <div class="image-container">

                                        <div id="container<%=i%>" class="dz-message text-600" data-dz-message="data-dz-message">
                                            <input type="file" id="image<%=i%>" name="files" class="input-file" accept="image/*"/>
                                            <br>
                                            <img class="mt-3 me-2" src="../admin/assets/images/image-icon.png" width="40" alt="">
                                        </div>
                                    </div>
                                    </div>
                                <input type="text" id="deletedFile" value="" style="display: none">
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
                                                <line x1="12" y1="22.08" x2="12" y2="12"></line></svg><span class="d-none d-sm-inline">Chi tiết</span></a
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
                                                    <line x1="17" y1="16" x2="23" y2="16"></line></svg><span class="d-none d-sm-inline">Ngày nhập</span></a
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
                                                        <input id="price" name="price" value="<%=(p != null) ? p.getPrice() : ""%>"
                                                                class="form-control"
                                                                type="text"
                                                                placeholder="Đồng" required
                                                        />
                                                    </div>
                                                    <div class="col-12 col-lg-6">
                                                        <h5 class="mb-2">Giá tiền đã giảm</h5>
                                                        <input id="promoPrice" name="promoPrice" value="<%=(p != null) ? p.getPromotionalPrice() : ""%>"
                                                                class="form-control"
                                                                type="text"
                                                                placeholder="Đồng" required
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
                                                    <div class="row g-3">
                                                        <div class="col-12 col-lg-6">
                                                            <h5 class="mb-2">Số lượng</h5>
                                                            <input id="quantity" name="quantity" value="<%=(p != null) ? p.getQuantity() : ""%>"
                                                                    class="form-control"
                                                                    type="text"
                                                                    placeholder="Ví dụ: 5" required
                                                            />
                                                        </div>
                                                        <div class="col-12 col-lg-6">
                                                            <h5 class="mb-2">Cân nặng</h5>
                                                            <input id="cannang" name="cannang" value="<%=(p != null) ? p.getCannang() : ""%>"
                                                                    class="form-control"
                                                                    type="text"
                                                                    placeholder="Kg" required
                                                            />
                                                        </div>
                                                        <div class="col-12 col-lg-6">
                                                            <h5 class="mb-2">Màu sắc</h5>
                                                            <input id="mausac" name="mausac" value="<%=(p != null) ? p.getMausac() : ""%>"
                                                                   class="form-control"
                                                                   type="text"
                                                                   placeholder="Ví dụ: Trắng" required
                                                            />
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div
                                                    class="tab-pane fade"
                                                    id="attributesTabContent"
                                                    role="tabpanel"
                                                    aria-labelledby="attributesTab"
                                            >
                                                <h5 class="mb-3 text-1000">Ngày nhập</h5>

                                                <div class="form-check">

                                                    <input
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
                                                <div class="row g-3">

                                                    <div class="col-12 col-lg-6">
                                                        <h5 class="mb-2 text-1000">ID thú cưng</h5>
                                                        <p name="pid" class="form-control"><%=(p != null) ? p.getProductId() : "Sản phẩm chưa có id"%></p>

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
                                                                <h5>Loại thú cưng</h5>
                                                            </div><select id="giong" name="giong" class="form-select mb-3" aria-label="category">
                                                            <option value="Chó">Chó</option>
                                                            <option value="Mèo">Mèo</option>

                                                        </select>
                                                        </div>
                                                    </div>


                                                    <div class="col-12 col-sm-6 col-xl-12">
                                                        <div>
                                                            <div class="d-flex flex-wrap justify-content-between mb-2">
                                                                <h5>Tags</h5>
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
                                                                <h5>Kích cỡ</h5>
                                                            </div><select class="form-select mb-3">
                                                            <option value="size">Nhỏ</option>
                                                            <option value="color">Vừa</option>
                                                            <option value="weight">Lớn</option>
                                                        </select>
                                                        </div>
                                                    </div>
                                                </div>
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
<script>
    const idProduct = $("#pid").val();
    if (idProduct.length > 0) {
        $(".remove").each(function () {
            const id = this.id.substring(6);
            removeFilesData(id)
        })
    } else {
        removeFilesData(1)
    }
    function reloadUpLoadFile() {
        $(".input-file").each(function () {
            $(this).on('change', function (e) {
                const idName = $(this).attr("id");
                const id = idName.substring(5);
                const value = $(this).val();
                let name = "";
                if (value.indexOf("\\") != -1)
                    name = value.substring(value.lastIndexOf("\\") + 1);
                else
                    name = value.substring(value.lastIndexOf("/") + 1);
                uploadFile(id, name, e)
            })
        });
    }
    $(".input-file").each(function () {
        $(this).on('change', function (e) {
            const idName = $(this).attr("id");
            const id = idName.substring(5);
            const value = $(this).val();
            let name = "";
            if (value.indexOf("\\") != -1)
                name = value.substring(value.lastIndexOf("\\") + 1);
            else
                name = value.substring(value.lastIndexOf("/") + 1);
            console.log(id +", " + name + ", ")
            uploadFile(id, name, e)
        })
    });
    function uploadFile(id, name, event) {
        event.stopPropagation();
        event.preventDefault();
        const files = event.target.files;
        const data = new FormData();
        $.each(files, function (key, value) {
            data.append(key, value);
        });
        postFilesData(id, name, data);
    }
    function removeFilesData(idDelete) {
        $("#remove" + idDelete).on("click", function (e) {
            e.preventDefault();
            const id = this.id.substring(6);
            const src = $("#container" + id + " .img-product-review").attr("src");
            let imageName = "";
            if (src.indexOf("\\") != -1)
                imageName = src.substring(src.lastIndexOf("\\") + 1);
            else
                imageName = src.substring(src.lastIndexOf("/") + 1);
            $("#container" + id).parent().remove();
            const value = $("#deletedFile").val();
            if (value.length > 0)
                $("#deletedFile").val($("#deletedFile").val() + imageName + ",");
            else
                $("#deletedFile").val(imageName + ",");
            console.log($("#deletedFile").val());
        });
    }
    function postFilesData(id, name, data) {
        let bool = false;
        $(".img-product-review").each(function () {
            let nameFile = $(this).attr("src");
            if (nameFile.indexOf(name) != -1) {
                bool = true;
            }
        })
        if (bool === false) {
            $.ajax({
                url: '/Petshop_website_final_war/UpDownImageProductController',
                type: 'POST',
                data: data,
                cache: false,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus, jqXHR) {
                    //success
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    $("#container" + id).empty()
                    $("#container" + id).prepend(`<div class="border bg-white rounded-3 d-flex flex-center position-relative me-2 mb-2 dz-image-preview" style="height:80px;width:80px;">
                                                <img class="img-product-review dz-image" src="http://localhost:8080/Petshop_website_final_war/img/products/` + name + `">
                                                <div class="control">
                                                <a id="remove`+ id +`" class="dz-remove text-400 remove" href="" data-dz-remove="">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16px" height="16px" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x">
                                                        <line x1="18" y1="6" x2="6" y2="18"></line>
                                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                                    </svg>
                                                </a>
                                                </div>
                                            </div>`)
                    $("#my-awesome-dropzone").append(`<div class="image-container">

                                        <div id="container`+ id +`" class="dz-message text-600" data-dz-message="data-dz-message">
                                            <input type="file" id="image`+ id +`" name="files" class="input-file" accept="image/*" />
                                            <br>
                                            <img class="mt-3 me-2" src="../admin/assets/images/image-icon.png" width="40" alt="">
                                        </div>
                                    </div>`)
                    let value = $("#deletedFile").val();
                    if (value.indexOf(name) !== -1) {
                        value = value.replace(name + ",", "");
                        $("#deletedFile").val(value);
                    }
                    console.log($("#deletedFile").val());
                    reloadUpLoadFile();
                    removeFilesData(id);
                }
            });
        } else {
            alert("Bạn đã upload ảnh này rồi !")
        }
    }
</script>
<script>
    $("button[type='submit']").click(function (e) {
        e.preventDefault();

        const id = $("#pid").val();
        const name = $("#name").val();
        const quantity = $("#quantity").val();
        const price = $("#price").val();
        const promo = $("#promoprice").val();
        const descripsion = CKEDITOR.instances.editor.getData();
        const mausac = $("#mausac").val();
        const cannang = $("#cannang").val();
        const giong = $("#giong").val();
        const imageLink = $(".img-product-review").attr("src").substring(61);
        console.log(imageLink);
        let imgFile = []
        $(".img-product-review").each(function () {
            let nameFile = $(this).attr("src");
            if (nameFile.indexOf("\\") != -1)
                imgFile.push(nameFile.substring(nameFile.lastIndexOf("\\") + 1));
            else
                imgFile.push(nameFile.substring(nameFile.lastIndexOf("/") + 1));
        })
        const removed = $("#deletedFile").val();
        const oldImg = removed.substring(0, removed.length - 1);
        $.ajax({
            url: "/Petshop_website_final_war/admin/edit-product",
            type: "GET",
            data: {
                quantity: quantity,
                oldImg: oldImg,
                id: id,
                name: name,
                price: price,
                promoPrice : promo,
                image : imageLink,
                descripsion : descripsion,
                mausac : mausac,
                cannang : cannang,
                giong : giong,
                imgFile: imgFile,
            },
            success: function () {
                if (id.length < 1)
                    alert("Thêm sản phẩm thành công");
                else
                    alert("Cập nhật sản phẩm thành công");
                window.location.href = "list-products"
            }
        })
    })
</script>
</html>
