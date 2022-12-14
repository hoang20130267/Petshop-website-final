<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zxx">

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
<div id="preloder">
  <div class="loader"></div>
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
      <a href="#"><i class="fa fa-user"></i> Login</a>
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
      <li><a href="contact.jsp">Contact</a></li>
    </ul>
  </nav>
  <div id="mobile-menu-wrap"></div>
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

<!-- Hero Section Begin -->
<!-- Hero Section End -->


<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="breadcrumb__text">
          <h2>Sản Phẩm</h2>
          <div class="breadcrumb__option">
            <a href="index.jsp">Trang chủ</a>
            <span><strong>Cửa hàng</strong></span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-5">
        <div class="sidebar">
          <div class="sidebar__item">
            <h4>Danh mục</h4>
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
          <div class="sidebar__item">
            <h4>Giá Tiền</h4>
            <div class="price-range-wrap">
              <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
              data-min="5" data-max="100">
                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
              </div>
              <div class="range-slider">
                <div class="price-input">
                  <input type="text" id="minamount">
                  <input type="text" id="maxamount">
                </div>
              </div>
            </div>
          </div>
          <div class="sidebar__item sidebar__item__color--option">
            <h4>Màu sắc</h4>
            <div class="sidebar__item__color sidebar__item__color--white">
              <label for="white">
                Trắng
                <input type="radio" id="white">
              </label>
            </div>
            <div class="sidebar__item__color sidebar__item__color--gray">
              <label for="gray">
                Xám
                <input type="radio" id="gray">
              </label>
            </div>
            <div class="sidebar__item__color sidebar__item__color--red">
              <label for="red">
                Xám Trắng
                <input type="radio" id="red">
              </label>
            </div>
            <div class="sidebar__item__color sidebar__item__color--black">
              <label for="black">
                Vàng
                <input type="radio" id="black">
              </label>
            </div>
            <div class="sidebar__item__color sidebar__item__color--blue">
              <label for="blue">
                Đen
                <input type="radio" id="blue">
              </label>
            </div>
            <div class="sidebar__item__color sidebar__item__color--green">
              <label for="green">
                Xám Nhạt
                <input type="radio" id="green">
              </label>
            </div>
          </div>
          <div class="sidebar__item">
            <h4>Kích Cỡ</h4>
            <div class="sidebar__item__size">
              <label for="large">
                Rất Lớn
                <input type="radio" id="large">
              </label>
            </div>
            <div class="sidebar__item__size">
              <label for="medium">
                Lớn
                <input type="radio" id="medium">
              </label>
            </div>
            <div class="sidebar__item__size">
              <label for="small">
                Vừa
                <input type="radio" id="small">
              </label>
            </div>
            <div class="sidebar__item__size">
              <label for="tiny">
                Nhỏ
                <input type="radio" id="tiny">
              </label>
            </div>
          </div>
          <!--                        <div class="sidebar__item">-->
          <!--                            <div class="latest-product__text">-->
          <!--                                <h4>Sản Phẩm Vừa Xem</h4>-->
          <!--                                <div class="latest-product__slider owl-carousel">-->
          <!--                                    <div class="latest-prdouct__slider__item">-->
          <!--                                        <a href="#" class="latest-product__item">-->
          <!--                                            <div class="latest-product__item__pic">-->
          <!--                                                <img src="img/latest-product/lp-1.jpg" alt="">-->
          <!--                                            </div>-->
          <!--                                            <div class="latest-product__item__text">-->
          <!--                                                <h6>Crab Pool Security</h6>-->
          <!--                                                <span>$30.00</span>-->
          <!--                                            </div>-->
          <!--                                        </a>-->
          <!--                                        <a href="#" class="latest-product__item">-->
          <!--                                            <div class="latest-product__item__pic">-->
          <!--                                                <img src="img/latest-product/lp-2.jpg" alt="">-->
          <!--                                            </div>-->
          <!--                                            <div class="latest-product__item__text">-->
          <!--                                                <h6>Crab Pool Security</h6>-->
          <!--                                                <span>$30.00</span>-->
          <!--                                            </div>-->
          <!--                                        </a>-->
          <!--                                        <a href="#" class="latest-product__item">-->
          <!--                                            <div class="latest-product__item__pic">-->
          <!--                                                <img src="img/latest-product/lp-3.jpg" alt="">-->
          <!--                                            </div>-->
          <!--                                            <div class="latest-product__item__text">-->
          <!--                                                <h6>Crab Pool Security</h6>-->
          <!--                                                <span>$30.00</span>-->
          <!--                                            </div>-->
          <!--                                        </a>-->
          <!--                                    </div>-->
          <!--                                    <div class="latest-prdouct__slider__item">-->
          <!--                                        <a href="#" class="latest-product__item">-->
          <!--                                            <div class="latest-product__item__pic">-->
          <!--                                                <img src="img/latest-product/lp-1.jpg" alt="">-->
          <!--                                            </div>-->
          <!--                                            <div class="latest-product__item__text">-->
          <!--                                                <h6>Crab Pool Security</h6>-->
          <!--                                                <span>$30.00</span>-->
          <!--                                            </div>-->
          <!--                                        </a>-->
          <!--                                        <a href="#" class="latest-product__item">-->
          <!--                                            <div class="latest-product__item__pic">-->
          <!--                                                <img src="img/latest-product/lp-2.jpg" alt="">-->
          <!--                                            </div>-->
          <!--                                            <div class="latest-product__item__text">-->
          <!--                                                <h6>Crab Pool Security</h6>-->
          <!--                                                <span>$30.00</span>-->
          <!--                                            </div>-->
          <!--                                        </a>-->
          <!--                                        <a href="#" class="latest-product__item">-->
          <!--                                            <div class="latest-product__item__pic">-->
          <!--                                                <img src="img/latest-product/lp-3.jpg" alt="">-->
          <!--                                            </div>-->
          <!--                                            <div class="latest-product__item__text">-->
          <!--                                                <h6>Crab Pool Security</h6>-->
          <!--                                                <span>$30.00</span>-->
          <!--                                            </div>-->
          <!--                                        </a>-->
          <!--                                    </div>-->
          <!--                                </div>-->
          <!--                            </div>-->
          <!--                        </div>-->
        </div>
      </div>
      <div class="col-lg-9 col-md-7">
        <div class="product__discount">
          <div class="section-title product__discount__title">
              <h2>Giảm Giá</h2>
          </div>
          <div class="row">
              <div class="product__discount__slider owl-carousel" style="z-index: -1">
                  <div class="col-lg-4">
                      <div class="product__discount__item">
                          <div class="product__discount__item__pic set-bg"
                              data-setbg="img/products/dog/sp1.jpg">
                              <div class="product__discount__percent">-20%</div>
                              <ul class="product__item__pic__hover">
                                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                              </ul>
                          </div>
                          <div class="product__discount__item__text">
                              <h5><a href="#">ALASKA Hồng Phấn</a></h5>
                              <div class="product__item__price">18.000.000đ<span>20.000.000đ</span></div>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-4">
                      <div class="product__discount__item">
                          <div class="product__discount__item__pic set-bg"
                              data-setbg="img/products/cat/sp01.jpg">
                              <div class="product__discount__percent">-20%</div>
                              <ul class="product__item__pic__hover">
                                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                              </ul>
                          </div>
                          <div class="product__discount__item__text">
                              <h5><a href="#">Mèo Anh lông ngắn Bicolor Lilac</a></h5>
                              <div class="product__item__price">7.000.000đ<span>13.000.000đ</span></div>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-4">
                      <div class="product__discount__item">
                          <div class="product__discount__item__pic set-bg"
                              data-setbg="img/products/dog/sp3.png">
                              <div class="product__discount__percent">-20%</div>
                              <ul class="product__item__pic__hover">
                                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                              </ul>
                          </div>
                          <div class="product__discount__item__text">
                              <h5><a href="#">Chó Corgi Pembroke</a></h5>
                              <div class="product__item__price">18.000.000đ <span>22.000.000đ</span></div>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-4">
                      <div class="product__discount__item">
                          <div class="product__discount__item__pic set-bg"
                              data-setbg="img/products/cat/sp02.jpg">
                              <div class="product__discount__percent">-20%</div>
                              <ul class="product__item__pic__hover">
                                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                              </ul>
                          </div>
                          <div class="product__discount__item__text">
                              <h5><a href="#">Mèo Anh lông ngắn nâu trắng</a></h5>
                              <div class="product__item__price">8.000.000đ<span>11.000.000đ</span></div>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-4">
                      <div class="product__discount__item">
                          <div class="product__discount__item__pic set-bg"
                              data-setbg="img/products/dog/sp4.png">
                              <div class="product__discount__percent">-20%</div>
                              <ul class="product__item__pic__hover">
                                  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                              </ul>
                          </div>
                          <div class="product__discount__item__text">
                              <h5><a href="#">Chó Corgi Pembroke</a></h5>
                              <div class="product__item__price">15.000.000đ<span>19.000.000đ</span></div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
        <div class="filter__item">
          <div class="row">
            <div class="col-lg-4 col-md-5">
              <div class="filter__sort">
                <span>Sắp xếp</span>
                <select>
                  <option value="0">Mặc Định</option>
                  <option value="0">Bán Chạy</option>
                  <option value="0">Phổ Biến</option>
                  <option value="0">Giá Tăng Dần</option>
                  <option value="0">Giá Giảm Dần</option>

                </select>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div class="filter__found">
                <h6><span>50</span> Sản Phẩm</h6>
              </div>
            </div>
            <div class="col-lg-4 col-md-3">
              <div class="filter__option">
                <span class="icon_grid-2x2"></span>
                <span class="icon_ul"></span>
              </div>
            </div>
          </div>
        </div>
        <div class="row" id="items-cat">
            <% List<Product> list = (List<Product>) request.getAttribute("list2");
                for (Product p : list) { %>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=p.getImage()%>">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="product-details.jsp?id=<%=p.getProductId()%>">
                            <%= p.getProductName()%>
                        </a>
                        </h6>
                        <h5><%=p.getPrice()%>đ</h5>
                    </div>
                </div>
            </div>
            <%    }
            %>
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Alaska Giant xám trắng</a></h6>-->
          <!--                <h5>25.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Phốc sóc mặt gấu</a></h6>-->
          <!--                <h5>30.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Scottish Van tai cụp</a></h6>-->
          <!--                <h5>22.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-4.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Munchkin Bicolor</a></h6>-->
          <!--                <h5>15.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-5.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Mèo chân ngắn tai cụp</a></h6>-->
          <!--                <h5>20.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-6.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Cún golden siêu phẩm</a></h6>-->
          <!--                <h5>30.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Cún golden ú</a></h6>-->
          <!--                <h5>20.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-8.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Mèo tai cụp</a></h6>-->
          <!--                <h5>20.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->
          <!--          <div class="col-lg-4 col-md-6 col-sm-6">-->
          <!--            <div class="product__item">-->
          <!--              <div class="product__item__pic set-bg" data-setbg="img/product/product-9.jpg">-->
          <!--                <ul class="product__item__pic__hover">-->
          <!--                  <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-retweet"></i></a></li>-->
          <!--                  <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
          <!--                </ul>-->
          <!--              </div>-->
          <!--              <div class="product__item__text">-->
          <!--                <h6><a href="product-details.jsp">Mèo chân ngắn tai cụp</a></h6>-->
          <!--                <h5>30.000.000đ</h5>-->
          <!--              </div>-->
          <!--            </div>-->
          <!--          </div>-->

        </div>
        <div class="loadmore" id="loadMore">
          <a style="cursor: pointer; margin-left: 370px; color: #fff; border-radius: 20px;" class="loadmore-btn site-btn">Tải thêm <span class="arrow_carrot-down"></span></a>
        </div>
        <!--        <div class="product__pagination">-->
        <!--          <a href="#">1</a>-->
        <!--          <a href="#">2</a>-->
        <!--          <a href="#">3</a>-->
        <!--          <a href="#"><i class="fa fa-long-arrow-right"></i></a>-->
        <!--        </div>-->
      </div>
    </div>
  </div>
</section>
<!-- Product Section End -->

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
<%--<script src="js/list-products.js"></script>--%>
<script src="admin/assets/js/vendor-all.min.js"></script>
<script src="admin/assets/js/plugins/bootstrap.min.js"></script>


</body>

</html>