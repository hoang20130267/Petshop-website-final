<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.dao.DetailDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Detail" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/28/2022
  Time: 7:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% CustomerUser user = (CustomerUser) session.getAttribute("user"); %>
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
                                    <a href="LogoutController"  class="dropdown-item">
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
                    <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li><a href="all-product.jsp?category=all>">Thú Cưng</a>
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
                        <%  DetailDAO dao = new DetailDAO();
                            List<Detail> list = dao.listCategory();
                            for (Detail p : list) { %>
                        <li>
                            <a href="#">
                                <%=p.getCatName()%>
                            </a>
                        </li>
                        <% } %>
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
