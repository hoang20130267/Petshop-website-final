<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 12/14/2022
  Time: 2:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ogani Template">
  <meta name="keywords" content="Ogani, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Pet Shop</title>

  <!-- Google Font -->
  <!-- <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="icon" type="image/png" sizes="16x16"  href="img/favicons/favicon-16x16.png">
  <!-- Css Styles -->
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="css/nice-select.css" type="text/css">
  <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
  <link rel="stylesheet" href="css/style.css" type="text/css">
  <style>
    .dropdown {
      position: relative;
    }
    .dropdown-toggle {
      white-space: nowrap;
    }

    .dropdown-toggle::after {
      display: inline-block;
      margin-left: 0.255em;
      vertical-align: 0.255em;
      content: "";
      border-top: 0.3em solid;
      border-right: 0.3em solid transparent;
      border-bottom: 0;
      border-left: 0.3em solid transparent;
    }

    .dropdown-toggle:empty::after {
      margin-left: 0;
    }

    .dropdown-menu {
      position: absolute;
      top: 100%;
      left: 0;
      z-index: 1000;
      display: none;
      min-width: 12rem;
      padding: 0.5rem 0;
      margin: 0.125rem 0 0;
      font-size: 0.875rem;
      color: #293240;
      text-align: left;
      list-style: none;
      background-color: #00BFFF;
      background-clip: padding-box;
      border: 0 solid rgba(0, 0, 0, 0.15);
      border-radius: 4px;
    }

    .dropdown-menu-left {
      right: auto;
      left: 0;
    }

    .dropdown-item {
      display: block;
      width: 100%;
      padding: 0.65rem 1.5rem;
      clear: both;
      font-weight: 400;
      color: #111;
      text-align: inherit;
      white-space: nowrap;
      background-color: transparent;
      border: 0;
    }

    .dropdown-item:hover, .dropdown-item:focus {
      color: #00BFFF;
      text-decoration: none;
      background-color: #e3e1fc;
    }

    .dropdown-item.active, .dropdown-item:active {
      color: #00BFFF;
      text-decoration: none;
      background-color: #e3e1fc;
    }

    .dropdown-item.disabled, .dropdown-item:disabled {
      color: #6c757d;
      pointer-events: none;
      background-color: transparent;
    }

    .dropdown-menu.show {
      display: block;
    }

    .dropdown-header {
      display: block;
      padding: 0.5rem 1.5rem;
      margin-bottom: 0;
      font-size: 0.76563rem;
      color: #6c757d;
      white-space: nowrap;
    }

    .dropdown-item-text {
      display: block;
      padding: 0.65rem 1.5rem;
      color: #293240;
    }
    .dropdown-toggle.arrow-none:after {
      display: none;
    }
  </style>
</head>
<body>

<!-- Floatting -->
<div class="add-button">
  <div class="sub-button tl">
    <i class="fa-solid fa-phone"></i>
  </div>
  <div class="sub-button tr">
    <i class="fa-brands fa-facebook-messenger"></i>
  </div>
  <div class="sub-button bl">
    <i class="fa-brands fa-facebook"></i>
  </div>
  <div class="sub-button br">
    <i class="fa-brands fa-instagram"></i>
  </div>
</div>


<!-- Page Preloder -->
<div id="preloder" style="display: none;">
  <div class="loader" style="display: none;"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
  <div class="humberger__menu__logo">
    <a href="#"><img src="img/logo.png" alt=""></a>
  </div>
  <div class="humberger__menu__cart">
    <ul>
      <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
      <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
    </ul>
    <div class="header__cart__price">item: <span>$150.00</span></div>
  </div>
  <div class="humberger__menu__widget">
    <div class="header__top__right__language">
      <img src="img/language.png" alt="">
      <div>English</div>
      <span class="arrow_carrot-down"></span>
      <ul>
        <li><a href="#">Spanis</a></li>
        <li><a href="#">English</a></li>
      </ul>
    </div>
    <div class="header__top__right__auth">
      <a href="login.jsp"><i class="fa fa-user"></i> ????ng nh???p</a>
    </div>
  </div>
  <nav class="humberger__menu__nav mobile-menu">
    <ul>
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="all-products.jsp">Shop</a></li>
      <li><a href="#">Pages</a>
        <ul class="header__menu__dropdown">
          <li><a href="product-details.jsp">Shop Details</a></li>
          <li><a href="shoping-cart.jsp">Shoping Cart</a></li>
          <li><a href="checkout.jsp">Check Out</a></li>
          <li><a href="blog-details.jsp">Blog Details</a></li>
        </ul>
      </li>
      <li><a href="blog.jsp">Blog</a></li>
      <li><a href="./contact.html">Contact</a></li>
    </ul>
  </nav>
  <div id="mobile-menu-wrap"><div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
    <ul>
      <li class="active"><a href="index.jsp" role="menuitem">Home</a></li>
      <li><a href="all-products.jsp" role="menuitem">Shop</a></li>
      <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;"><a href="#">Pages</a>
        <span class="slicknav_arrow">???</span></a><ul class="header__menu__dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
        <li><a href="product-details.jsp" role="menuitem" tabindex="-1">Shop Details</a></li>
        <li><a href="shoping-cart.jsp" role="menuitem" tabindex="-1">Shoping Cart</a></li>
        <li><a href="checkout.jsp" role="menuitem" tabindex="-1">Check Out</a></li>
        <li><a href="blog-details.jsp" role="menuitem" tabindex="-1">Blog Details</a></li>
      </ul>
      </li>
      <li><a href="blog.jsp" role="menuitem">Blog</a></li>
      <li><a href="./contact.html" role="menuitem">Contact</a></li>
    </ul>
  </nav></div></div>
  <div class="header__top__right__social">
    <a href="#"><i class="fa fa-facebook"></i></a>
    <a href="#"><i class="fa fa-twitter"></i></a>
    <a href="#"><i class="fa fa-linkedin"></i></a>
    <a href="#"><i class="fa fa-pinterest-p"></i></a>
  </div>
  <div class="humberger__menu__contact">
    <ul>
      <li><i class="fa fa-envelope"></i>  LTW_nhom10@gmail.com</li>
      <li>Free Shipping for all Order of $99</li>
    </ul>
  </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<jsp:include page="layout/header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6">
        <div class="product__details__pic">
          <div class="product__details__pic__item">
            <img class="product__details__pic__item--large"
                 src="img/products/dog/sp6.png" alt="">
          </div>
          <div class="product__details__pic__slider owl-carousel">
            <img data-imgbigurl="img/products/dog/sp6.png"
                 src="img/products/dog/sp6.png" alt="">
            <img data-imgbigurl="img/product/detail-1.png"
                 src="img/products/dog/sp6.png" alt="">
            <img data-imgbigurl="img/product/detail-2.png"
                 src="img/products/dog/sp6.png" alt="">
            <img data-imgbigurl="img/product/detail-3.png"
                 src="img/products/dog/sp6.png" alt="">
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="product__details__text">
          <h3>Ch?? Corgi Fluffy</h3>
          <div class="product__details__rating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
            <span>(18 ng?????i ???? mua)</span>
          </div>
          <div class="product__details__price">10.000.000??</div>
          <p>Ch?? Corgi Fluffy c?? ngo???i h??nh nh??? b?? v?? ng??? ngh??nh, ????ng y??u. Ch??ng c??ng r???t n??ng ?????ng v?? th??ng
            minh n??n ???????c nhi???u ng?????i ??a th??ch v?? mong mu???n s??? h???u.</p>
          <div class="product__details__quantity">
            <div class="quantity">
              <div class="pro-qty">
                <input type="text" value="1">
              </div>
            </div>
          </div>
          <a href="#" class="primary-btn">Th??m v??o gi??? h??ng</a>
          <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
          <ul>
            <li><b>Gi???ng: </b> <span>Corgi Fluffy</span></li>
            <li><b>M??u S???c: </b> <span>V??ng & Tr???ng</span></li>
            <li><b>C??n n???ng: </b> <span>2 kg</span></li>
            <li><b>Chia s??? th??ng tin </b>
              <div class="share">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-pinterest"></i></a>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="product__details__tab">
          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                 aria-selected="true">Gi???i thi???u</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                 aria-selected="false">Th??ng tin</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                 aria-selected="false">????nh gi?? <span>(0)</span></a>
            </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tabs-1" role="tabpanel">
              <div class="product__details__tab__desc">
                <h6>Gi???i thi???u v??? th?? c??ng</h6>
                <p>Ch?? Corgi Fluffy c?? ngo???i h??nh nh??? b?? v?? ng??? ngh??nh, ????ng y??u. Ch??ng c??ng r???t n??ng
                  ?????ng v?? th??ng minh n??n ???????c nhi???u ng?????i ??a th??ch v?? mong mu???n s??? h???u.</p>
              </div>
            </div>
            <div class="tab-pane" id="tabs-2" role="tabpanel">
              <div class="product__details__tab__desc">
                <h6>Th??ng tin th?? c??ng</h6>
                <p>Corgi ???????c ph??n ra th??nh ba gi???ng lo???i nhau l?? Cardigan Corgi, Pembroke Welsh Corgi
                  v?? Corgi Fluffy. T??n c???a ch??ng ???????c ?????t theo t??n c???a x??? Wells c???, c??ng l?? n??i m??
                  Corgi ???????c ph??t hi???n.

                  Ch?? Corgi Fluffy c?? th??n h??nh ng???n v?? th???p l??n. B??? d??i kho???ng 20 cm, tr???ng l?????ng
                  trung b??nh 12kg. Corgi th?????ng ???????c nu??i d?????ng ????? l??m ch?? s??n v?? ch??n gia s??c. Ch??ng
                  c???n v??o g??t ch??n c??ng nh???ng con gia s??c kh??ng ??i theo b???y ????n. Th???nh tho???ng ch??ng
                  c???n lu??n c??? g??t ch??n ch??? nh??n m??nh, r???t ????ng y??u!

                  Nu??i d?????ng ch?? Corgi Fluffy ph???i thu??n th??? ch??? ????? dinh d?????ng nghi??m ng???t. B???i v?? c??
                  th??? ch??ng ph??t tri???n v?? t??ng tr???ng r???t nhanh. N???u ng?????i nu??i kh??ng ki???m so??t ??n u???ng
                  th?? r???t d??? r??i v??o t??nh tr???ng b??o ph??.</p>
                <p>&ensp; Gi?? c???a gi???ng ch?? Corgi Fluffy tr??n th??? tr?????ng hi???n nay
                  Hi???n nay, d??ng ch?? Corgi Fluffy v???n ch??a ???????c nh??n gi???ng ph??? bi???n. C??c nh?? ph??n ph???i
                  th?????ng ph???i nh???p kh???u Corgi t??? n?????c ngo??i v???. V?? v???y m?? gi?? th??nh c???a gi???ng ch?? n??y
                  kh?? cao. Sau ????y s??? l?? th??ng tin tham kh???o gi??nh cho b???n ??ang c?? ?? ?????nh s??? h???u m???t
                  boss Corgi Fluffy.</p>
              </div>
            </div>
            <div class="tab-pane" id="tabs-3" role="tabpanel">
              <div class="product__details__tab__desc">
                <h6>????nh gi??</h6>
                <p>Ch??a c?? ????nh gi?? n??o.</p>
                <p>Ch??? nh???ng kh??ch h??ng ???? ????ng nh???p v?? mua s???n ph???m n??y m???i c?? th??? ????a ra ????nh gi??.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title related__product__title">
          <h2>C??c s???n ph???m li??n quan</h2>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="product-details.html">Ph???c s??c m???t g???u</a></h6>
            <h5>30.000.000??</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="shop-details1.html">Alaska Giant x??m tr???ng</a></h6>
            <h5>25.000.000??</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="shop-details2.html">Scottish Van tai c???p</a></h6>
            <h5>22.000.000??</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg">
            <ul class="product__item__pic__hover">
              <li><a href="#"><i class="fa fa-heart"></i></a></li>
              <li><a href="#"><i class="fa fa-retweet"></i></a></li>
              <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="shop-details6.html">C??n golden ??</a></h6>
            <h5>20.000.000??</h5>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Related Product Section End -->


<!-- Footer Section Begin -->
<jsp:include page="layout/footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="admin/assets/js/vendor-all.min.js"></script>
<script src="admin/assets/js/plugins/bootstrap.min.js"></script>

</body>
</html>
