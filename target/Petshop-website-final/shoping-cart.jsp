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
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;display=swap" rel="stylesheet">
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
                          <li><a href="./shoping-cart.html">Shoping Cart</a></li>
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
                  <li class="active"><a href="index.jsp" role="menuitem">Home</a></li>
                  <li><a href="all-products.jsp" role="menuitem">Shop</a></li>
                  <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;"><a href="#">Pages</a>
                      <span class="slicknav_arrow">►</span></a><ul class="header__menu__dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                          <li><a href="product-details.jsp" role="menuitem" tabindex="-1">Shop Details</a></li>
                          <li><a href="./shoping-cart.html" role="menuitem" tabindex="-1">Shoping Cart</a></li>
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
    <jsp:include page="layout/header.jsp"></jsp:include>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
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
<!--                                    Tất cả các loại-->
<!--                                    <span class="arrow_carrot-down"></span>-->
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
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg" style="background-image: url(&quot;img/breadcrumb.jpg&quot;);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Giỏ hàng của bạn</h2>
                         <div class="breadcrumb__option">
                            <a href="index.jsp">Trang chủ</a>
                            <span><strong>Giỏ hàng</strong></span>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                            <tr>
                                <th class="shoping__product">Sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Tổng tiền</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="shoping__cart__item">
                                    <img src="img/cart/cart-1.jpg" alt="">
                                    <h5>Alaska Giant xám trắng</h5>
                                </td>
                                <td class="shoping__cart__price">
                                    25.000.000đ
                                </td>
                                <td class="shoping__cart__quantity">
                                    <div class="quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </div>
                                </td>
                                <td class="shoping__cart__total">
                                    25.000.000đ
                                </td>
                                <td class="shoping__cart__item__close">
                                    <span class="icon_close"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="shoping__cart__item">
                                    <img src="img/cart/cart-2.jpg" alt="">
                                    <h5>Cún golden siêu phẩm</h5>
                                </td>
                                <td class="shoping__cart__price">
                                    30.000.000đ
                                </td>
                                <td class="shoping__cart__quantity">
                                    <div class="quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </div>
                                </td>
                                <td class="shoping__cart__total">
                                    30.000.000đ
                                </td>
                                <td class="shoping__cart__item__close">
                                    <span class="icon_close"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="shoping__cart__item">
                                    <img src="img/cart/cart-3.jpg" alt="">
                                    <h5>Mèo chân ngắn tai cụp</h5>
                                </td>
                                <td class="shoping__cart__price">
                                    30.000.000đ
                                </td>
                                <td class="shoping__cart__quantity">
                                    <div class="quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </div>
                                </td>
                                <td class="shoping__cart__total">
                                    30.000.000đ
                                </td>
                                <td class="shoping__cart__item__close">
                                    <span class="icon_close"></span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="#" class="primary-btn cart-btn">TIẾP TỤC MUA SẮM</a>
                        <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            &nbsp; Cập nhật giỏ hàng</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Mã giảm giá</h5>
                            <form action="#">
                                <input type="text" placeholder="Nhập mã giảm giá">
                                <button type="submit" class="site-btn">APPLY</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Tổng tiền giỏ hàng</h5>
                        <ul>
                            <li>Tạm tính <span>85.000.000 Đồng</span></li>
                            <li>Tổng tiền <span>85.000.000 Đồng</span></li>
                        </ul>
                        <a href="checkout.jsp" class="primary-btn">CHUYỂN ĐẾN PHẦN THANH TOÁN</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

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


</body>

</html>