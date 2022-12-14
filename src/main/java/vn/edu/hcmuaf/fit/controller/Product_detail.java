package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Detail", value = "/Detail")
public class Product_detail extends HttpServlet {
    /*
        Chi tiết sản phẩm - Nguyễn Huy Hoàng 20130266
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        String id = request.getParameter("productId");
        Product detail = dao.getProductDetail(id);
        request.setAttribute("detail",detail);
        request.getRequestDispatcher("product-details.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
