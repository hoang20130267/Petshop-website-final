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
                  <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
              </div>
          </div>
          <nav class="humberger__menu__nav mobile-menu">
              <ul>
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="all-products.jsp">Shop</a></li>
                  <!-- <li><a href="#">Pages</a>
                      <ul class="header__menu__dropdown">
                          <li><a href="./product-details.jsp">Shop Details</a></li>
                          <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                          <li><a href="./checkout.jsp">Check Out</a></li>
                          <li><a href="./blog-details.jsp">Blog Details</a></li>
                      </ul>
                  </li> -->
                  <li class="active"><a href="./blog.html">Blog</a></li>
                  <li><a href="contact.jsp">Contact</a></li>
              </ul>
          </nav>
          <div id="mobile-menu-wrap"><div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
              <ul>
                  <li><a href="index.jsp" role="menuitem">Home</a></li>
                  <li><a href="all-products.jsp" role="menuitem">Shop</a></li>
                  <!-- <li><a href="#">Pages</a>
                      <ul class="header__menu__dropdown">
                          <li><a href="./product-details.jsp">Shop Details</a></li>
                          <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                          <li><a href="./checkout.jsp">Check Out</a></li>
                          <li><a href="./blog-details.jsp">Blog Details</a></li>
                      </ul>
                  </li> -->
                  <li class="active"><a href="./blog.html" role="menuitem">Blog</a></li>
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
                        <h2>Tin tức</h2>
                        <div class="breadcrumb__option">
                            <a href="index.jsp">Trang chủ</a>
                            <span><strong>Tin tức</strong></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Tìm kiếm...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Thể loại</h4>
                            <ul>
                                <li><a href="#">Tất Cả</a></li>
                                <li><a href="#">Chó</a></li>
                                <li><a href="#">Mèo</a></li>
                                <li><a href="#">Life Style</a></li>
                                <li><a href="#">Chăm sóc</a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Tin mới nhất</h4>
                            <div class="blog__sidebar__recent">
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-1.jpg" alt="">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>Danh sách các thuốc tẩy giun<br> cho chó con an toàn</h6>
                                        <span>11/12/2021</span>
                                    </div>
                                </a>
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-2.jpg" alt="">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>Từng bước cách chăm sóc <br> chó mẹ sau sinh mổ đẻ</h6>
                                        <span>12/10/2021</span>
                                    </div>
                                </a>
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-3.jpg" alt="">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>Cách chăm sóc chó mang<br> thai tại nhà cần phải biết</h6>
                                        <span>20/08/ 2021</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Từ khóa</h4>
                            <div class="blog__sidebar__item__tags">
                                <a href="#">Chó</a>
                                <a href="#">Mèo</a>
                                <a href="#">Chăm sóc</a>
                                <a href="#">Đời Sống</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-2.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> 12/10/2022</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="blog-details.jsp">Hãy dừng lại nếu bạn đang cho chó mèo ăn chay</a></h5>
                                    <p>Hãy dừng ngay lại việc cho chó mèo ăn chay hoặc rau củ quả với hàm lượng lớn trong một ...</p>
                                    <a href="blog-details.jsp" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-3.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> 12/10/2022</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="blog-details.jsp">Phải làm sao khi chó bị đau chân và đi khập khiễng ?</a></h5>
                                    <p>Chó bị đau chân cà nhắc có thể do nhiều nguyên nhân bởi loài chó rất hiếu động ...</p>
                                    <a href="blog-details.jsp" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-1.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> 12/10/2022</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="blog-details.jsp">Giống chó Alaskan Malamute: khổng lồ liệu giá có rẻ?</a></h5>
                                    <p>Giống chó Alaskan Malamute hay chó Alaska, là một trong những giống chó kéo xe cổ xưa ...</p>
                                    <a href="blog-details.jsp" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-4.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> 12/10/2022</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="blog-details.jsp">Tẩy giun cho chó và những điều bạn cần phải biết</a></h5>
                                    <p>Tẩy giun cho chó và phòng ngừa giun sán là việc rất quan trọng. Cũng giống như con người ...</p>
                                    <a href="blog-details.jsp" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-5.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> 12/10/2022</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="blog-details.jsp">Cách chăm sóc chó mang thai tại nhà cần phải biết</a></h5>
                                    <p>Việc chăm sóc chó mang thai tại nhà cũng không hề đơn giản. Nếu bạn không có kiến thức ...</p>
                                    <a href="blog-details.jsp" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-6.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> 12/10/2022</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="blog-details.jsp">Danh sách các thuốc tẩy giun cho chó con an toàn</a></h5>
                                    <p>Mua thuốc tẩy giun cho chó con là một việc nhất thiết bạn phải làm khi nuôi một chú chó ...</p>
                                    <a href="blog-details.jsp" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="product__pagination blog__pagination">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                            </div>
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



</body>

</html>