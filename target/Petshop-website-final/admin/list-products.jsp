<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.dao.ProductDAO" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.UserAccount" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.AdminRole" %>
<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
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
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
    />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta
            name="description"
            content="DashboardKit is made using Bootstrap 5 design framework. Download the free admin template & use it for your project."
    />
    <meta
            name="keywords"
            content="DashboardKit, Dashboard Kit, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Free Bootstrap Admin Template"
    />
    <meta name="author" content="DashboardKit "/>

    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.svg" type="image/x-icon"/>

    <!-- font css -->
    <link rel="stylesheet" href="assets/fonts/feather.css"/>
    <link rel="stylesheet" href="assets/fonts/fontawesome.css"/>
    <link rel="stylesheet" href="assets/fonts/material.css"/>
    <link rel="stylesheet" href="assets/css/list/style1.css"/>
    <link rel="stylesheet" href="assets/css/list/bootstrap1.min.css"/>

    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link"/>
</head>
<%
    if (request.getSession().getAttribute("admin") == null) {
        response.sendRedirect("/login.jsp");
    } else {
        UserAccount admin = (UserAccount) request.getSession().getAttribute("admin");
        boolean check = false;
        for (AdminRole role : admin.getRole()) {
            if (role.getTableName().equals("product")) {
                check = true;
                break;
            }
        }
        if (!check) {%>
<script>
    window.location.href = 'index.jsp';
    alert("Tài khoản không có quyền này!");
</script>
<% } else {
%>
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
        <img src="assets/images/logo.svg" alt="" class="logo logo-lg"/>
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
<nav class="pc-sidebar">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="index.jsp" class="b-brand">
                <!-- ========   change your logo hear   ============ -->
                <img src="assets/images/logo.png" alt="" class="logo logo-lg"/>
                <img src="assets/images/logo-sm.svg" alt="" class="logo logo-sm"/>
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
                        <li class="pc-item"><a class="pc-link" href="add-category-product.jsp">Danh mục sản phẩm</a>
                        </li>
                        <li class="pc-item"><a class="pc-link" href="add-category-blog.jsp">Danh mục tin tức</a></li>
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
                <li class="pc-item pc-caption">
                    <label>Quản lý liên hệ</label>
                </li>
                <li class="pc-item">
                    <a href="list-contact.jsp" class="pc-link "><span class="pc-micon"><i data-feather="message-circle">history_edu</i></span><span class="pc-mtext">Liên hệ</span></a>
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
                            <li class="breadcrumb-item">Danh sách thú cưng</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <%NumberFormat format = NumberFormat.getInstance(new Locale("vn", "VN"));%>

        <!-- [ Main Content ] start -->
        <div class="row">
            <div id="content" class="row">
                <h2 style=" font-weight: 800; text-align: center; margin: 10px 0px 20px;">Danh sách thú cưng</h2>
<%--                <% List<Product> list = (List<Product>) request.getAttribute("list");--%>
<%--                    for (Product p : list) { %>--%>
<%--                <div class="col-md-3">--%>
<%--                    <div class="white_card position-relative mb_20">--%>
<%--                        <div class="card-body">--%>
<%--                            <img src="<%=p.getImage()%>" style="height: 150px; width: 150px; object-fit: cover"--%>
<%--                                 class="d-block mx-auto my-4"--%>
<%--                                 height="150"--%>
<%--                            />--%>
<%--                            <div class="row my-4">--%>
<%--                                <div class="col">--%>
<%--                                    <span class="badge_btn_3 mb-1"--%>
<%--                                          style="display: flex; padding-left: 50px"><%=p.getGiong()%></span>--%>
<%--                                    <a href="#" class="f_w_400 color_text_3 f_s_14 d-block"--%>
<%--                                       style="text-align: center;"><%=p.getProductName()%>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <h4 class="text-dark mt-0" style="margin-left: 46px;">--%>
<%--                                        <%=format.format(p.getPrice())%>đ--%>

<%--                                    </h4>--%>
<%--                                    <ul--%>
<%--                                            class="list-inline mb-0 product-review align-self-center"--%>
<%--                                            style="margin-left: 35px;"--%>
<%--                                    >--%>
<%--                                        <li class="list-inline-item">--%>
<%--                                            <i class="fas fa-star text-warning font-16"></i>--%>
<%--                                        </li>--%>
<%--                                        <li class="list-inline-item">--%>
<%--                                            <i--%>
<%--                                                    class="fas fa-star text-warning font-16 ms -n2"--%>
<%--                                            ></i>--%>
<%--                                        </li>--%>
<%--                                        <li class="list-inline-item">--%>
<%--                                            <i--%>
<%--                                                    class="fas fa-star text-warning font-16 ms -n2"--%>
<%--                                            ></i>--%>
<%--                                        </li>--%>
<%--                                        <li class="list-inline-item">--%>
<%--                                            <i--%>
<%--                                                    class="fas fa-star text-warning font-16 ms -n2"--%>
<%--                                            ></i>--%>
<%--                                        </li>--%>
<%--                                        <li class="list-inline-item">--%>
<%--                                            <i--%>
<%--                                                    class="fas fa-star-half text-warning font-16 ms -n2"--%>
<%--                                            ></i>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="d-grid">--%>
<%--                                <%--%>
<%--                                    for (AdminRole role : admin.getRole()) {--%>
<%--                                        if (role.getTableName().equals("product") && role.getPermission() == 2) {--%>
<%--                                %>--%>
<%--                                <a class="btn_2" href="edit-product.jsp?pid=<%=p.getProductId()%>"--%>
<%--                                   style="margin-top: 3px; text-align: center;">Chỉnh sửa</a>--%>
<%--                                <%--%>
<%--                                    }--%>
<%--                                    if (role.getTableName().equals("product") && role.getPermission() == 3) {--%>
<%--                                        if (!ProductService.getInstance().isProductInOrder(p.getProductId())) { %>--%>
<%--                                <a class="btn_2" href="delete-product?pid=<%=p.getProductId()%>"--%>
<%--                                   style="margin-top: 3px; text-align: center;">Xóa</a>--%>
<%--                                <%--%>
<%--                                            }--%>
<%--                                        }--%>
<%--                                    }--%>
<%--                                %>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

                <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white border-top border-bottom border-200 position-relative top-1">
                    <div class="table-responsive scrollbar mx-n1 px-1">
                        <table class="table table-sm fs--1 mb-0">
                            <thead>
                            <tr>
                                <th class="sort align-middle pe-5" scope="col" data-sort="customer" style="width:10%;">ID</th>
                                <th class="sort align-middle pe-5" scope="col" data-sort="customer" style="width:10%;">Hình ảnh</th>
                                <th class="sort align-middle pe-5" scope="col" data-sort="email" style="width:20%;">Tên thú cưng</th>
                                <th class="sort align-middle text-center" scope="col" data-sort="total-orders" style="width:10%">Giống</th>
                                <th class="sort align-middle text-center ps-3" scope="col" data-sort="total-spent" style="width:10%">Giá tiền</th>
                                <th class="sort align-middle ps-7 text-center" scope="col" data-sort="city" style="width:25%;">Cân nặng</th>
                                <th class="sort align-middle text-end" scope="col" data-sort="last-seen" style="width:15%;">Sửa xóa</th>
                            </tr>
                            </thead>
<%--                            <% List<Product> list = (List<Product>) request.getAttribute("list");--%>
<%--                                for (Product p : list) { %>--%>
                            <tbody class="list" id="table-latest-review-body">
<%--                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">--%>
<%--                                <td class="fs--1 align-middle ps-0 py-3">--%>
<%--                                    <!-- <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox"></div> -->--%>
<%--                                    <p class="mb-0 text-1100 fw-bold"><%=p.getProductId()%></p>--%>
<%--                                </td>--%>
<%--                                <td class="customer align-middle white-space-nowrap pe-5"><a class="d-flex align-items-center" href="#!">--%>
<%--                                    <p class="mb-0 ms-3 text-1100 fw-bold"><img src="<%=p.getImage()%>" style="height: 50px; width: 50px; object-fit: cover"></p>--%>
<%--                                </a></td>--%>
<%--                                <td class="email align-middle white-space-nowrap pe-5"><%=p.getProductName()%></td>--%>
<%--                                <td class="total-orders align-middle white-space-nowrap fw-semi-bold text-center"><%=p.getGiong()%></td>--%>
<%--                                <td class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3"><%=format.format(p.getPrice())%>đ</td>--%>
<%--                                <td class="city align-middle white-space-nowrap text-900 ps-7 text-center"><%=p.getCannang()%></td>--%>
<%--                                <td class="last-order align-middle white-space-nowrap text-700 text-end">--%>
<%--                                    <%--%>
<%--                                        for (AdminRole role : admin.getRole()) {--%>
<%--                                            if (role.getTableName().equals("product") && role.getPermission() == 2) {--%>
<%--                                    %>--%>
<%--                                    <a class="btn_2 edit btn btn-primary" href="edit-product.jsp?pid=<%=p.getProductId()%>">Sửa</a>--%>
<%--                                    <%--%>
<%--                                        }--%>
<%--                                        if (role.getTableName().equals("product") && role.getPermission() == 3) {--%>
<%--                                            if (!ProductService.getInstance().isProductInOrder(p.getProductId())) { %>--%>
<%--                                    <a class="btn_2 edit btn btn-primary" href="delete-product?pid=<%=p.getProductId()%>" style="background-color: crimson; color: white">Xóa</a>--%>
<%--                                    <%--%>
<%--                                                }--%>
<%--                                            }--%>
<%--                                        }--%>
<%--                                        }--%>
<%--                                    %>--%>


<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            </tr>--%>

                            </tbody>
                        </table>
                    </div>
                    <div class="bar" id="pagging_bar" style="margin-left: 600px">

                    </div>
                    <input id="total" name="total" value="<%=request.getAttribute("numb")%>" type="text" style="display: none">
<%--                    <div class="row align-items-center justify-content-between py-2 pe-0 fs--1">--%>
<%--                        <div class="col-auto d-flex">--%>
<%--                            <!-- <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900" data-list-info="data-list-info">1 đến 10 <span class="text-600"> trong </span>15</p><a class="fw-semi-bold" href="#!" data-list-view="*">Xem tất cả<svg class="svg-inline--fa fa-angle-right ms-1" data-fa-transform="down-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg="" style="transform-origin: 0.25em 0.5625em;"><g transform="translate(128 256)"><g transform="translate(0, 32)  scale(1, 1)  rotate(0 0 0)"><path fill="currentColor" d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z" transform="translate(-128 -256)"></path></g></g></svg></a><a class="fw-semi-bold d-none" href="#!" data-list-view="less">View Less<svg class="svg-inline--fa fa-angle-right ms-1" data-fa-transform="down-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg="" style="transform-origin: 0.25em 0.5625em;"><g transform="translate(128 256)"><g transform="translate(0, 32)  scale(1, 1)  rotate(0 0 0)"><path fill="currentColor" d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z" transform="translate(-128 -256)"></path></g></g></svg></a> -->--%>
<%--                        </div>--%>
<%--                        <div class="col-auto d-flex"><button class="page-link disabled" data-list-pagination="prev" disabled=""><svg class="svg-inline--fa fa-chevron-left" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M224 480c-8.188 0-16.38-3.125-22.62-9.375l-192-192c-12.5-12.5-12.5-32.75 0-45.25l192-192c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25L77.25 256l169.4 169.4c12.5 12.5 12.5 32.75 0 45.25C240.4 476.9 232.2 480 224 480z"></path></svg><!-- <span class="fas fa-chevron-left"></span> Font Awesome fontawesome.com --></button>--%>
<%--                            <ul class="mb-0 pagination"><li class="active"><button class="page" type="button" data-i="1" data-page="10">1</button></li><li><button class="page" type="button" data-i="2" data-page="10">2</button></li></ul><button class="page-link pe-0" data-list-pagination="next"><svg class="svg-inline--fa fa-chevron-right" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z"></path></svg><!-- <span class="fas fa-chevron-right"></span> Font Awesome fontawesome.com --></button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>

            </div>
        </div>
        <!-- [ Main Content ] end -->
    </div>
</div>
<%
        }
    }
%>
<!-- Required Js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        barPagging();
        load6Products();
    })

    function barPagging() {
        /* let page = $("#page").val();*/
        let total = $("#total").val();
        $.ajax({
            url: "/Petshop_website_final_war/admin/ajax/ajax-barProductAdminPagging.jsp",
            type: "get", //send it through get method
            data: {
                total: total,
                /*          page: page*/
            },
            success: function (data) {
                $("#pagging_bar").html(data);
            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    }

    function pagging(page) {
        $.ajax({
            url: "/Petshop_website_final_war/PaggingProductController",
            type: "get", //send it through get method
            data: {
                page: page,
            },
            success: function (data) {
                $("#table-latest-review-body").html(data);
                $(".page-item").removeClass("active")
                $(".page-item.item" + page).addClass("active")
                console.log(page);

            },
            error: function (xhr) {
            }
        });
    }

    function searchByName(param) {
        var txtSearch = param.value;
        $.ajax({
            url: "/Petshop_website_final_war/search",
            type: "get",
            data: {
                txt: txtSearch
            },
            success: function (data) {
                var row = document.getElementById("content");
                row.innerHTML = data;
            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    }

    function load6Products() {
        var amount = 0;
        $.ajax({
            type: 'post',
            url: "Load6ProductsController",
            data: {
                amount: amount,
            },
            success: function (data) {
                $("#table-latest-review-body").html(data);
          /*      $(".filter__found h6 span").text($("#numb").val());*/
                barPagging();
            }
        });
    }
</script>
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
