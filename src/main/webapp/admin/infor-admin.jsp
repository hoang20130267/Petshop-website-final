<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 15/12/2022
  Time: 4:15 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
  <style>
    .form-control:focus {
      box-shadow: none;
      border-color: #BA68C8
    }

    .profile-button {
      background: #00BFFF;
      box-shadow: none;
      border: none
    }

    .profile-button:hover {
      background: #039ed7;
    }

    .profile-button:focus {
      background: #00BFFF;
      box-shadow: none
    }

    .profile-button:active {
      background: #2576ce;
      box-shadow: none
    }

    .back:hover {
      color: #00BFFF;
      cursor: pointer
    }

    .labels {
      font-size: 11px
    }

    .add-experience:hover {
      background: #5dcbf6;
      color: #fff;
      cursor: pointer;
      border: solid 1px #5dcbf6
    }
  </style>
</head>
<% CustomerUser user = (CustomerUser) session.getAttribute("user"); %>
<body>
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
            <li class="pc-item"><a class="pc-link" href="list-products">Danh sách thú cưng</a></li>
            <li class="pc-item"><a class="pc-link" href="">Thêm thú cưng</a></li>
          </ul>
        </li>
        <li class="pc-item pc-hasmenu">
          <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">business_center</i></span><span class="pc-mtext">Phụ kiện</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
          <ul class="pc-submenu">
            <li class="pc-item"><a class="pc-link" href="list-accessory">Danh sách phụ kiện</a></li>
            <li class="pc-item"><a class="pc-link" href="edit-accessory.jsp">Thêm phụ kiện</a></li>
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
            <li class="pc-item"><a class="pc-link" href="add-category-product.jsp">Danh mục sản phẩm</a></li>
            <li class="pc-item"><a class="pc-link" href="add-category-blog.jsp">Danh mục tin tức</a></li>
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

<div class="pc-container">
  <div class="pcoded-content">
    <!-- [ breadcrumb ] start -->
    <div class="page-header">
      <div class="page-block">
        <div class="row align-items-center">
          <div class="col-md-6">

            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.jsp">Quản lý</a></li>
              <li class="breadcrumb-item">Tài khoản</li>
              <li class="breadcrumb-item">Admin</li>
              <li class="breadcrumb-item">Thông tin tài khoản</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
<div class="container rounded bg-white mt-5 mb-5">
  <div class="row">
    <div class="col-md-3 border-right">
      <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="assets/images/user/avatar-2.png"><span class="font-weight-bold">Admin</span><span class="text-black-50">admin@gmail.com</span><span> </span></div>
    </div>
    <div class="col-md-5 border-right">
      <div class="p-3 py-5">
        <div class="d-flex justify-content-between align-items-center mb-3">
          <h4 class="text-right">Thông tin tài khoản</h4>
        </div>
        <div class="row mt-2">
          <div class="col-md-6"><label class="labels">Username</label><input type="text" class="form-control" placeholder="Nhập username" value=""></div>
          <div class="col-md-6"><label class="labels">Họ và tên</label><input type="text" class="form-control" value="" placeholder="Nhập họ tên"></div>
        </div>
        <div class="row mt-3">
          <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" placeholder="Nhập email tại đây" value=""></div>
          <div class="col-md-12"><label class="labels" style="padding-top: 10px">Địa chỉ làm việc</label><input type="text" class="form-control" placeholder="Nhập địa chỉ làm việc tại đây" value=""></div>
          <div class="col-md-12"><label class="labels" style="padding-top: 10px">Số điện thoại</label><input type="text" class="form-control" placeholder="Nhập số điện thoại tại đây" value=""></div>

        </div>
        <div class="row mt-3">
          <div class="col-md-6"><label class="labels">Nơi ở</label><input type="text" class="form-control" placeholder="Nhập nơi ở" value=""></div>
          <div class="col-md-6"><label class="labels">Quốc gia</label><input type="text" class="form-control" value="" placeholder="Nhập quốc gia"></div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="p-3 py-5">
        <div class="d-flex justify-content-between align-items-center experience"><span>Đổi mật khẩu</span>
          <a href="add-admin.jsp"><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Thêm admin mới</span></a>
        </div><br>
        <div class="col-md-12"><label class="labels">Nhập mật khẩu mới</label><input type="text" class="form-control" placeholder="Nhập mật khẩu" value=""></div> <br>
        <div class="col-md-12"><label class="labels">Nhập lại mật khẩu</label><input type="text" class="form-control" placeholder="Nhập lại mật khẩu" value=""></div>
        <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Lưu thông tin</button></div>
      </div>

    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
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
