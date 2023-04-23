<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.dao.ProductDAO" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.UserAccount" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.AdminRole" %>
<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  if (request.getSession().getAttribute("admin") == null) {
    response.sendRedirect("/login.jsp");
  } else {
    UserAccount admin = (UserAccount) request.getSession().getAttribute("admin");
    boolean check = false;
    for (AdminRole role : admin.getRole()) {
      if (role.getTableName().equals("product")) {
        check = true;
        break;
      }
    }
    if (!check) {%>
<script>
  window.location.href = 'index.jsp';
  alert("Tài khoản không có quyền này!");
</script>
<% } else {
%>
<% List<Product> list = (List<Product>) request.getAttribute("listnext6");
  for (Product p : list) { %>
<% NumberFormat format = NumberFormat.getInstance(new Locale("vn", "VN"));%>
<tr class="hover-actions-trigger btn-reveal-trigger position-static">
<td id="amount" class="fs--1 align-middle ps-0 py-3">
  <!-- <div class="form-check mb-0 fs-0"><input class="form-check-input" type="checkbox"></div> -->
  <p class="mb-0 text-1100 fw-bold"><%=p.getProductId()%></p>
</td>
<td class="customer align-middle white-space-nowrap pe-5"><a class="d-flex align-items-center" href="#!">
  <p class="mb-0 ms-3 text-1100 fw-bold"><img src="<%=p.getImage()%>" style="height: 50px; width: 50px; object-fit: cover"></p>
</a></td>
<td class="email align-middle white-space-nowrap pe-5"><%=p.getProductName()%></td>
<td class="total-orders align-middle white-space-nowrap fw-semi-bold text-center"><%=p.getGiong()%></td>
<td class="total-spent align-middle white-space-nowrap fw-bold text-end ps-3"><%=format.format(p.getPrice())%>đ</td>
<td class="city align-middle white-space-nowrap text-900 ps-7 text-center"><%=p.getCannang()%></td>
<td class="last-order align-middle white-space-nowrap text-700 text-end">
  <%
    for (AdminRole role : admin.getRole()) {
      if (role.getTableName().equals("product") && role.getPermission() == 2) {
  %>
  <a class="btn_2 edit btn btn-primary" href="edit-product.jsp?pid=<%=p.getProductId()%>">Sửa</a>
  <%
    }
    if (role.getTableName().equals("product") && role.getPermission() == 3) {
      if (!ProductService.getInstance().isProductInOrder(p.getProductId())) { %>
  <a class="btn_2 edit btn btn-primary" href="delete-product?pid=<%=p.getProductId()%>" style="background-color: crimson; color: white">Xóa</a>
  <%
          }
        }
      }
    }
  %>


</td>
</tr>
</tr>
<%
    }
  }
%>

<input type="text" id="numb" value="<%=request.getAttribute("numb")%>" style="display: none">

