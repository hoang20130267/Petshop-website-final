<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicons/favicon-16x16.png">
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
                    <li><a href="./checkout.html">Check Out</a></li>
                    <li><a href="./blog-details.jsp">Blog Details</a></li>
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
<%
    CustomerUser user = (CustomerUser) request.getSession().getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
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
                    <h2>Thanh to??n</h2>
                    <div class="breadcrumb__option">
                        <a href="index.jsp">Trang ch???</a>
                        <span><strong>Thanh to??n</strong></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6><span class="icon_tag_alt"></span> B???n c?? m?? gi???m gi?? ? <a href="#">Nh???n v??o ????y</a> ????? nh???n m?? gi???m
                    gi??
                </h6>
            </div>
        </div>
        <div class="checkout__form">
            <h4>Th??ng tin thanh to??n</h4>
            <form action="CheckoutController" method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>H??? T??n<span>*</span></p>
                                    <input type="text" name="fullname" value="<%=user.getName()%>">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>S??? ??i???n tho???i<span>*</span></p>
                                    <input type="text" name="phone" value="<%=user.getPhone()%>">
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input">
                            <p>?????a ch???<span>*</span></p>
                            <%if (user.getAddress() == null) {%>
                            <input type="text" name="address" placeholder="Nh???p ?????a ch??? nh???n h??ng">
                            <%} else {%>
                            <input type="text" name="address" value="<%=user.getAddress()%>">
                            <%}%>
                        </div>
                        <div class="checkout__input">
                            <p>Email<span>*</span></p>
                            <input type="email" placeholder="+84" name="email" value="<%=user.getEmail()%>">
                        </div>
                        <div class="checkout__input">
                            <p>Ghi ch??</p>
                            <input type="text"
                                   placeholder="Ghi ch?? v??? ????n h??ng c???a b???n, v?? d???: Giao h??ng v??o khung gi??? n??o..."
                                   name="notice">
                        </div>
                    </div>
                    <%
                        Cart cart = (Cart) request.getSession().getAttribute("cart");
                        NumberFormat format = NumberFormat.getInstance(new Locale("vn", "VN"));
                    %>
                    <div class="col-lg-6 col-md-6">
                        <div class="checkout__order">
                            <h4>H??a ????n c???a b???n</h4>
                            <div class="checkout__order__products">S???n ph???m <span>T???ng ti???n</span></div>
                            <ul>
                                <%
                                    for (String id : cart.getData().keySet()) {
                                        if (cart.getData().get(id).getSales() != null) {%>
                                <li><%=cart.getData().get(id).getProductName()%>
                                    <span>
                                        <%=format.format(cart.getData().get(id).getQuantityCart() * (cart.getData().get(id).getPrice() * 0.01 * (100 - cart.getData().get(id).getSales().getDiscount())))%>???
                                    </span>
                                </li>
                                <%} else {%>
                                <li><%=cart.getData().get(id).getProductName()%>
                                    <span>
                                        <%=format.format(cart.getData().get(id).getQuantityCart() * cart.getData().get(id).getPrice())%>???
                                    </span>
                                </li>
                                <%}%>
                                <% }%>
                            </ul>
                            <div class="checkout__order__total">T???ng ti???n
                                <span><%=cart != null ? format.format(cart.total()) : 0%>???</span></div>

                            <p>Ki???m tra l???i th??ng tin ????n h??ng v?? nh???ng th??ng tin t??i ???? nh???p tr?????c khi ?????t h??ng.</p>
                            <div class="checkout__input__checkbox">
                                <label for="payment">
                                    Thanh to??n khi nh???n h??ng
                                    <input type="checkbox" id="payment">
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <button type="submit" class="site-btn">Mua h??ng</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

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