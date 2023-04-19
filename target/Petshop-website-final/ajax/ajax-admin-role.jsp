<%@ page import="vn.edu.hcmuaf.fit.beans.AdminRole" %><%--
  Created by IntelliJ IDEA.
  User: Nguyen Ngoc Huy
  Date: 4/15/2023
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    AdminRole role = (AdminRole) request.getAttribute("role");
    System.out.println(role);
    String table = "";
    String permission = "";
    switch (role.getTableName()) {
        case "product":
            table = "Quản lý sản phẩm";
            break;
        case "blog":
            table = "Quản lý tin tức";
            break;
        case "order":
            table = "Quản lý đơn hàng";
            break;
        case "productCategory":
            table = "Quản lý danh mục sản phẩm";
            break;
        case "blogCategory":
            table = "Quản lý danh mục tin tức";
            break;
        case "adminAccount":
            table = "Quản lý tài khoản admin";
            break;
        case "userAccount":
            table = "Quản lý tài khoản người dùng";
            break;
        case "comment":
            table = "Quản lý bình luận";
            break;
        case "contact":
            table = "Quản lý liên hệ";
            break;
    }
    switch (role.getPermission()) {
        case 1:
            permission = "Thêm";
            break;
        case 2:
            permission = "Sửa";
            break;
        case 3:
            permission = "Xóa";
            break;
    }
%>
<tr>
    <td class="text-center border-dark border-1"><%=table%>
    </td>
    <td class="text-center border-dark border-1"><%=permission%>
    </td>
    <td class="text-center border-dark border-1">
        <a class="btn_2 edit btn btn-primary" href="#">Xóa</a>
    </td>
</tr>
