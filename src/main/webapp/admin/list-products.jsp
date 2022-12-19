<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.dao.ProductDAO" %>
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
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
    />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="description"
      content="DashboardKit is made using Bootstrap 5 design framework. Download the free admin template & use it for your project."
    />
    <meta
      name="keywords"
      content="DashboardKit, Dashboard Kit, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Free Bootstrap Admin Template"
    />
    <meta name="author" content="DashboardKit " />

    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.svg" type="image/x-icon" />

    <!-- font css -->
    <link rel="stylesheet" href="assets/fonts/feather.css" />
    <link rel="stylesheet" href="assets/fonts/fontawesome.css" />
    <link rel="stylesheet" href="assets/fonts/material.css" />
    <link rel="stylesheet" href="assets/css/list/style1.css" />
    <link rel="stylesheet" href="assets/css/list/bootstrap1.min.css" />

    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link" />
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
        <img src="assets/images/logo.svg" alt="" class="logo logo-lg" />
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
            <img src="assets/images/logo.png" alt="" class="logo logo-lg" />
            <img src="assets/images/logo-sm.svg" alt="" class="logo logo-sm" />
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
                      <li class="pc-item"><a class="pc-link" href="edit-product.jsp">Thêm thú cưng</a></li>
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
                  <li class="breadcrumb-item">Danh sách thú cưng</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
          <div id="content" class="row">
            <h2 style=" font-weight: 800; text-align: center; margin: 10px 0px 40px;">Danh sách thú cưng</h2>
              <% List<Product> list = (List<Product>) request.getAttribute("list");
                  for (Product p : list) { %>
            <div class="col-md-3">
              <div class="white_card position-relative mb_20">
                <div class="card-body">
                  <img
                    src="<%=p.getImage()%>"
                    alt=""
                    class="d-block mx-auto my-4"
                    height="150"
                  />
                  <div class="row my-4">
                    <div class="col">
                      <span class="badge_btn_3 mb-1" style="display: flex; padding-left: 50px"><%=p.getGiong()%></span>
                      <a href="#" class="f_w_400 color_text_3 f_s_14 d-block"
                      style="text-align: center;"><%=p.getProductName()%></a
                      >
                    </div>
                    <div class="col-auto">
                      <h4 class="text-dark mt-0" style="margin-left: 46px;">
                        <%=p.getPrice()%>đ

                      </h4>
                      <ul
                        class="list-inline mb-0 product-review align-self-center" style="margin-left: 35px;"
                      >
                        <li class="list-inline-item">
                          <i class="fas fa-star text-warning font-16"></i>
                        </li>
                        <li class="list-inline-item">
                          <i
                            class="fas fa-star text-warning font-16 ms -n2"
                          ></i>
                        </li>
                        <li class="list-inline-item">
                          <i
                            class="fas fa-star text-warning font-16 ms -n2"
                          ></i>
                        </li>
                        <li class="list-inline-item">
                          <i
                            class="fas fa-star text-warning font-16 ms -n2"
                          ></i>
                        </li>
                        <li class="list-inline-item">
                          <i
                            class="fas fa-star-half text-warning font-16 ms -n2"
                          ></i>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="d-grid">
                      <a class="btn_2" href="edit-product.jsp?pid=<%=p.getProductId()%>" style="margin-top: 3px; text-align: center;">Chỉnh sửa</a>
                      <a class="btn_2" href="delete-product?pid=<%=p.getProductId()%>" style="margin-top: 3px; text-align: center;">Xóa</a>
                  </div>
                </div>
              </div>
            </div>
              <%    }
              %>
          </div>
        </div>
        <!-- [ Main Content ] end -->
      </div>
    </div>

    <!-- Required Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        function searchByName(param){
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
