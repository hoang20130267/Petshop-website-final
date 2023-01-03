package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllProduct", value = "/all-product")
public class AllProduct extends HttpServlet{
    /*
        Hiển thị sản phẩm - Nguyễn Huy Hoàng 20130266, Nguyễn Sĩ Hoàng 20130267
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        String price = request.getParameter("price");
        String orderby = request.getParameter("orderby");
        String category = request.getParameter("category");
        String size = request.getParameter("size");
        String amount = request.getParameter("amount");
        int amount_int = 0;
        List<Product> list = dao.getFullProduct(  category, price,  size,  orderby);
        request.setAttribute("list", list);
        request.setAttribute("numb", list.size());
        request.getRequestDispatcher("all-products.jsp").forward(request,response);
        System.out.println(category);
        System.out.println(dao.getFullProduct( category, price,  size,  orderby));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}