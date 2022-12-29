package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FilterProductController", value = "/FilterProductController")
public class FilterProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String price = request.getParameter("price");
        String orderby = request.getParameter("orderby");
        String category = request.getParameter("category");
        String size = request.getParameter("size");
        List<Product> test = ProductService.getInstance().Filter(category,price,size,orderby);
        request.setAttribute("test", test);
        request.getRequestDispatcher("ajax/ajax_LoadProduct.jsp").forward(request, response);

    }
}
