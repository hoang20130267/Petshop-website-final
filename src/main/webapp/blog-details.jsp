<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Blogs" %>
<%@ page import="vn.edu.hcmuaf.fit.services.BlogService" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
<%@ page import="vn.edu.hcmuaf.fit.services.UserService" %>
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
        .row1 p {
            overflow: hidden;
            text-overflow: ellipsis;
            line-height: 25px;
            -webkit-line-clamp: 2;
            display: -webkit-box;
            -webkit-box-orient: vertical;
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
                <a href="#"><i class="fa fa-user"></i> ????ng nh???p</a>
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
                        <li><a href="./blog-details.html">Blog Details</a></li>
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
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
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

    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <%  String id = request.getParameter("id");
                    BlogService service = new BlogService();
                    Blogs blogs = service.getContent(id);
                %>
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2><%=blogs.getBlogName()%></h2>
                        <ul>
                            <li>T??c gi???: <%=UserService.getInstance().getUserDetail(blogs.getCreateBy()).getName()%></li>
                            <li><%=blogs.getCreateDate()%></li>
<%--                            <li>0 B??nh Lu???n</li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="T??m ki???m...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Th??? lo???i</h4>
                            <ul>
                                <li><a href="#">T???t C???</a></li>
                                <li><a href="#">Ch??</a></li>
                                <li><a href="#">M??o</a></li>
                                <li><a href="#">Life Style</a></li>
                                <li><a href="#">Ch??m s??c</a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Tin m???i nh???t</h4>
                            <div class="blog__sidebar__recent">
                                <% List<Blogs> listNew = new BlogService().NewBlogs();
                                    for(Blogs b : listNew) {
                                %>
                                <a href="blog-details.jsp?id=<%=b.getBlogId()%>" class="blog__sidebar__recent__item" style="    display: flex !important;">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="<%=b.getImage()%>" alt="" style="object-fit: cover;height: 70px;width: 137px">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6><%=b.getBlogName()%></h6>
                                        <span><%=b.getCreateDate()%></span>
                                    </div>
                                </a>
                                <% }%>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                    <div class="blog__details__text">
                        <img src="<%=blogs.getImage()%>" alt="" height="400" width="800">
                        <h3><%=blogs.getBlogName()%></h3>
                        <p><%=blogs.getDital()%></p>
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="admin/assets/images/user/avatar-2.png" alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <h6>LTW_Nhom10</h6>

                                        <span><%=UserService.getInstance().getUserDetail(blogs.getCreateBy()).getName()%></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <ul>
                                        <li><span>Danh m???c:</span> Ch??m s??c</li>
<!--                                        <li><span>Tags:</span> T???t c???, Ch??, M??o</li>-->
                                    </ul>
                                    <div class="blog__details__social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
<!--                                        <a href="#"><i class="fa fa-twitter"></i></a>-->
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
<!--                                        <a href="#"><i class="fa fa-linkedin"></i></a>-->
<!--                                        <a href="#"><i class="fa fa-envelope"></i></a>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Related Blog Section Begin -->
     <section class="related-blog spad">
         <div class="container">
             <div class="row">
                 <div class="col-lg-12">
                     <div class="section-title related-blog-title">
                         <h2>B??i vi???t b???n c?? th??? th??ch</h2>
                     </div>
                 </div>
             </div>
             <div class="row">
                 <% List<Blogs> listNewest = new BlogService().NewBlogs();
                     for(Blogs blogs2 : listNewest) {
                 %>
                 <div class="row1 col-lg-4 col-md-4 col-sm-6">
                     <div class="blog__item">
                         <div class="blog__item__pic">
                             <img src="<%=blogs2.getImage()%>" alt="" style="width: 290px;height: 200px; object-fit: cover">
                         </div>
                         <div class="blog__item__text">
                             <ul>
                                 <li><i class="fa fa-calendar-o"></i> <%=blogs2.getCreateDate()%></li>
                             </ul>
                             <h5><a href="blog-details.jsp?id=<%=blogs2.getBlogId()%>"><%=blogs2.getBlogName()%></a></h5>
                             <p><%=blogs2.getDescription()%></p>
                         </div>
                     </div>
                 </div>
                 <% }%>
             </div>
         </div>
     </section>
    <!-- Related Blog Section End -->

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