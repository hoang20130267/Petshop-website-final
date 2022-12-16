<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Cart" %>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Ngoc Huy
  Date: 12/15/2022
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
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
                        <th>Số lượng</th>
                        <th>Tổng tiền</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <% Cart cart = (Cart) request.getSession().getAttribute("cart");
                        int i = 1;
                        NumberFormat format = NumberFormat.getInstance(new Locale("vn", "VN"));%>
                    <% if (cart != null) {
                        for (String id : cart.getData().keySet()) {%>
                    <tr>
                        <td class="shoping__cart__item">
                            <img src="<%=cart.getData().get(id).getImage()%>" alt="">
                            <h5><%=cart.getData().get(id).getProductName()%>
                            </h5>
                        </td>
                        <%if (cart.getData().get(id).getSales() != null) {%>
                        <td class="shoping__cart__price">
                            <%=format.format(cart.getData().get(id).getPrice() * 0.01 * (100 - cart.getData().get(id).getSales().getDiscount()))%>
                            ₫ - (-<%=cart.getData().get(id).getSales().getDiscount()%>%)
                        </td>
                        <%} else {%>
                        <td class="shoping__cart__price">
                            <%=format.format(cart.getData().get(id).getPrice())%>₫
                        </td>
                        <%}%>
                        <td class="shoping__cart__quantity">
                            <div class="quantity">
                                <div class="pro-qty" id="quantity-<%=cart.getData().get(id).getProductId()%>">
                                    <span onclick="tru(<%=i%>)"
                                          class="dec qtybtn control<%=cart.getData().get(id).getProductId()%>">-</span>
                                    <input type="text" value="<%=cart.getData().get(id).getQuantityCart()%>"
                                           id="quatity-text-<%=i%>">
                                    <span onclick="cong(<%=i%>)"
                                          class="inc qtybtn control<%=cart.getData().get(id).getProductId()%>">+</span>
                                </div>
                            </div>
                        </td>
                        <%if (cart.getData().get(id).getSales() != null) {%>
                        <td class="shoping__cart__total" id="thanh_tien">
                            <%=format.format(cart.getData().get(id).getQuantityCart() * (cart.getData().get(id).getPrice() * 0.01 * (100 - cart.getData().get(id).getSales().getDiscount())))%>
                            ₫
                        </td>
                        <%} else {%>
                        <td class="shoping__cart__total" id="thanh_tien">
                            <%=format.format(cart.getData().get(id).getQuantityCart() * cart.getData().get(id).getPrice())%>
                            ₫
                        </td>
                        <%}%>
                        <td class="shoping__cart__item__close">
                            <a href="" id="delete<%=cart.getData().get(id).getProductId()%>"> <i class="icon_close"></i></a>
                        </td>
                    </tr>
                    <%
                                i++;
                            }
                        }
                    %>
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
<%--                <span class="total__price"><%=cart != null ? format.format(cart.total()) : 0%>₫</span>--%>

                                    <ul>
<%--                                        <li>Tạm tính <span>85.000.000 Đồng</span></li>--%>
                                        <li>Tổng tiền <span class="total__price"><%=cart != null ? format.format(cart.total()) : 0%>₫</span></li>
                                    </ul>
                <a href="checkout.jsp" class="primary-btn">CHUYỂN ĐẾN PHẦN THANH TOÁN</a>
            </div>
        </div>
    </div>
</div>


