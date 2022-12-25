<%@ page import="vn.edu.hcmuaf.fit.beans.CustomerUser" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.dao.ProductDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Ngoc Huy
  Date: 12/16/2022
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%CustomerUser user = (CustomerUser) request.getSession().getAttribute("user");%>
<% List<Product> list = (List<Product>) request.getAttribute("listnext9");
    for (Product p : list) { %>
<div class="col-lg-4 col-md-6 col-sm-6 amount-pd">
    <div class="product__item">
        <div class="product__item__pic set-bg" data-setbg="<%=p.getImage()%>" style="background-image: url(<%=p.getImage()%>);">
            <ul class="product__item__pic__hover">
                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                <%if (user != null) {
                    Product product = new ProductDAO().getProductDetail(p.getProductId());%>
                <%if (Integer.parseInt(product.getQuantity())> 0) {%>
                <li><a class="shopnow2" id="addCart-<%=p.getProductId()%>" ><i
                        class="fa fa-shopping-cart"></i></a></li>
                <%}%>
                <%
                } else {%>
                <li><a class="shopnow2" href="login.jsp"><i
                        class="fa fa-shopping-cart"></i></a></li>
                <%  }
                %>
            </ul>
        </div>
        <div class="product__item__text">
            <h6><a href="product-details.jsp?id=<%=p.getProductId()%>"><%= p.getProductName()%>
            </a></h6>
            <h5><%=p.getPrice()%>đ</h5>
        </div>
    </div>
</div>
<% }
%>
