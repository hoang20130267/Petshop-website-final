package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProduct", value = "/all-product")
public class ListProduct extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = ProductService.getData();
        request.setAttribute("list", list);
        request.getRequestDispatcher("all-products.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}