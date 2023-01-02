<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Wishlist" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Si Hoang
  Date: 01/01/2023
  Time: 11:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%CustomerUser user = (CustomerUser) request.getSession().getAttribute("user");%>
<%NumberFormat formatter = NumberFormat.getInstance(new Locale("vn", "VN"));%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="shoping__cart__table">
                <table>
                    <thead>
                    <tr>
                        <th class="shoping__product">Sản phẩm</th>
                        <th>Giá</th>
                        <th>Thích</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <% Wishlist wishlist = (Wishlist) request.getSession().getAttribute("wishlist");
                        NumberFormat format = NumberFormat.getInstance(new Locale("vn", "VN"));%>
                    <% if (wishlist != null) {
                        for (String id : wishlist.getData().keySet()) {%>
                    <tr>
                        <td class="shoping__cart__item">
                            <div class="pro-qty" id="quatity-<%=wishlist.getData().get(id).getProductId()%>">
                            <img src="<%=wishlist.getData().get(id).getImage()%>" alt="">
                            <h5><%=wishlist.getData().get(id).getProductName()%>
                        </td>
                        <td class="shoping__cart__price">
                            <%=format.format(wishlist.getData().get(id).getPrice())%>₫
                        </td>
                        <td class="shoping__cart__total">
                            <i class="fa fa-heart">
                            </i></td>
                        <td class="shoping__cart__item__close pro-qty">
                            <a href="" id="delete<%=wishlist.getData().get(id).getProductId()%>"> <i class="icon_close"></i></a>
                        </td>
                    </tr>
                    <%
                            }
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
