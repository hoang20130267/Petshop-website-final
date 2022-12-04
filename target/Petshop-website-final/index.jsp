<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zxx">


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
    <style type="text/css">@font-face { font-family: Roboto; src: url("chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/css/Roboto-Regular.ttf"); }</style>
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
    <% CustomerUser user = (CustomerUser) session.getAttribute("user"); %>

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
                <a href="#"><i class="fa fa-user"></i> Đăng Nhập</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li><a href="./index.html">Home</a></li>
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
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"><div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
            <ul>
                <li class="active"><a href="./index.html" role="menuitem">Home</a></li>
                <li><a href="all-products.jsp" role="menuitem">Shop</a></li>
                <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;"><a href="#">Pages</a>
                    <span class="slicknav_arrow">►</span></a><ul class="header__menu__dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                        <li><a href="product-details.jsp" role="menuitem" tabindex="-1">Shop Details</a></li>
                        <li><a href="shoping-cart.jsp" role="menuitem" tabindex="-1">Shoping Cart</a></li>
                        <li><a href="checkout.jsp" role="menuitem" tabindex="-1">Check Out</a></li>
                        <li><a href="blog-details.jsp" role="menuitem" tabindex="-1">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="blog.jsp" role="menuitem">Blog</a></li>
                <li><a href="contact.jsp" role="menuitem">Contact</a></li>
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
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> LTW_nhom10@gmail.com</li>
                                <li>Hệ thống cửa hàng thú cưng</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook" title="Our Facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram" title="Our Instagram"></i></a>
                            </div>
                            <%if (user == null) {%>
                            <div class="header__top__right__auth">
                                <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                            </div>
                            <%} else if (user != null) {%>
                            <div class="header__top__right__auth">
                                <li class="dropdown pc-h-item" style="list-style-type: none;">
                                    <a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <span>
                                        <span class="user-name" style="color: #111;"><i class="fa fa-user"></i>&nbsp;&nbsp;<%=user.getName()%></span>
                                    </span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right pc-h-dropdown">
                                        <a href="#!" class="dropdown-item">
                                            <span><i data-feather="briefcase"></i> Tài khoản của tôi</span>
                                        </a>
                                        <a href="LogoutController" class="dropdown-item">
                                            <span><i data-feather="x-square"></i> Đăng xuất</span>
                                        </a>
                                    </div>
                                </li>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./index.html">Trang Chủ</a></li>
                            <li><a href="all-product">Thú Cưng</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="products-dog">Chó</a></li>
                                    <li><a href="products-cat">Mèo</a></li>
                                    <li><a href="products-accessory">Phụ Kiện</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.jsp">Tin Tức</a></li>
                            <li><a href="contact.jsp">Liên Hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="like-product.jsp"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">Giỏ hàng: <span>85.000.000 Đồng</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh mục</span>
                        </div>
                        <ul>
                            <li><a href="#">Chó Alaska</a></li>
                            <li><a href="#">Chó Beagle</a></li>
                            <li><a href="#">Chó Corgi</a></li>
                            <li><a href="#">Chó Golden Retriever</a></li>
                            <li><a href="#">Chó Husky</a></li>
                            <li><a href="#">Chó Phốc sóc</a></li>
                            <li><a href="#">Mèo Anh</a></li>
                            <li><a href="#">Mèo lông ngắn</a></li>
                            <li><a href="#">Mèo chân ngắn</a></li>
                            <li><a href="#">Mèo tai cụp</a></li>
                            <li><a href="#">Mèo tam thể</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
<!--                                <div class="hero__search__categories">-->
<!--                                    Tìm kiếm sản phẩm-->
<!--&lt;!&ndash;                                    <span class="arrow_carrot-down"></span>&ndash;&gt;-->
<!--                                </div>-->
                                <input type="text" placeholder="Bạn cần tìm gì ?">
                                <button type="submit" class="site-btn">Tìm Kiếm</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+84 987.145.145</h5>
                                <span>Hỗ trợ 24/7</span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg" style="background-image: url(&quot;img/hero/banner.jpg&quot;);">
                        <div class="hero__text">
                            <span>CỬA HÀNG THÚ CƯNG</span>
                            <h2>Chó mèo <br>và nhiều hơn thế</h2>
                            <p>Giao thú cưng tận nhà trong ngày</p>
                            <a href="list-product" class="primary-btn">MUA NGAY</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
                            <h5><a>Mèo Lông Xám</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-6.jpg">
                            <h5><a>Mèo Chân Ngắn</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
                            <h5><a>Chó Poodle</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
                            <h5><a>Chó Shiba</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
                            <h5><a>Mèo Lông Ngắn</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Thú Cưng Bán Chạy</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">Tất Cả</li>
                            <li data-filter=".oranges">Chó Poodle</li>
                            <li data-filter=".fresh-meat">Chó Shiba</li>
                            <li data-filter=".vegetables">Mèo Chân Ngắn</li>
                            <li data-filter=".fastfood">Mèo Lông Xám</li>
                            <li data-filter=".fastfood">Chó Bichon</li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-9.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">BICHON TRẮNG XINH XINH</a></h6>
                            <h5>16.000.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-1.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Poodle Tiny màu nâu</a></h6>
                            <h5>20.000.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Alaska Giant khổng lồ xám trắng</a></h6>
                            <h5>25.000.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-4.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Munchkin Bicolor xám xanh lông dài</a></h6>
                            <h5>20.000.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Poodle Tiny tai bướm màu trắng</a></h6>
                            <h5>20.000.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-6.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Rottweiler màu đen vàng</a></h6>
                            <h5>25.000.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-7.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Bully American xám trắng</a></h6>
                            <h5>30.000.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-8.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Scottish Golden tai cụp</a></h6>
                            <h5>30.000.000đ</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

<!--    &lt;!&ndash; Latest Product Section Begin &ndash;&gt;-->
<!--    <section class="latest-product spad">-->
<!--        <div class="container">-->
<!--            <div class="row">-->
<!--                <div class="col-lg-4 col-md-6">-->
<!--                    <div class="latest-product__text">-->
<!--                        <h4>Latest Products</h4>-->
<!--                        <div class="latest-product__slider owl-carousel">-->
<!--                            <div class="latest-prdouct__slider__item">-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-1.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-2.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-3.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                            </div>-->
<!--                            <div class="latest-prdouct__slider__item">-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-1.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-2.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-3.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="col-lg-4 col-md-6">-->
<!--                    <div class="latest-product__text">-->
<!--                        <h4>Top Rated Products</h4>-->
<!--                        <div class="latest-product__slider owl-carousel">-->
<!--                            <div class="latest-prdouct__slider__item">-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-1.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-2.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-3.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                            </div>-->
<!--                            <div class="latest-prdouct__slider__item">-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-1.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-2.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-3.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="col-lg-4 col-md-6">-->
<!--                    <div class="latest-product__text">-->
<!--                        <h4>Review Products</h4>-->
<!--                        <div class="latest-product__slider owl-carousel">-->
<!--                            <div class="latest-prdouct__slider__item">-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-1.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-2.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-3.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                            </div>-->
<!--                            <div class="latest-prdouct__slider__item">-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-1.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-2.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                                <a href="#" class="latest-product__item">-->
<!--                                    <div class="latest-product__item__pic">-->
<!--                                        <img src="img/latest-product/lp-3.jpg" alt="">-->
<!--                                    </div>-->
<!--                                    <div class="latest-product__item__text">-->
<!--                                        <h6>Crab Pool Security</h6>-->
<!--                                        <span>$30.00</span>-->
<!--                                    </div>-->
<!--                                </a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </section>-->
<!--    &lt;!&ndash; Latest Product Section End &ndash;&gt;-->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>Bài Viết Bạn Có Thể Thích</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/blog-1.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 20/9/2022</li>
                                <li><i class="fa fa-comment-o"></i> 6</li>
                            </ul>
                            <h5><a href="#">Giống chó Alaskan Malamute: khổng lồ liệu giá có rẻ?</a></h5>
                            <p>Giống chó Alaskan Malamute hay chó Alaska, là một trong những giống chó kéo xe cổ xưa ...</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/blog-2.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 15/10/2022</li>
                                <li><i class="fa fa-comment-o"></i> 15</li>
                            </ul>
                            <h5><a href="#">Hãy dừng lại nếu bạn đang cho chó mèo ăn chay</a></h5>
                            <p>Hãy dừng ngay lại việc cho chó mèo ăn chay hoặc rau củ quả với hàm lượng lớn trong một ...</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/blog-3.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 20/9/2021</li>
                                <li><i class="fa fa-comment-o"></i> 25</li>
                            </ul>
                            <h5><a href="#">Phải làm sao khi chó bị đau chân và đi khập khiễng?</a></h5>
                            <p>Chó bị đau chân cà nhắc có thể do nhiều nguyên nhân bởi loài chó rất hiếu động ... </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

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