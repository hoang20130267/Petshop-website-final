package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListAccessory", value = "/admin/list-accessory")
public class ListAccessory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = ProductService.getData4();
        request.setAttribute("list", list);
        request.getRequestDispatcher("list-accessory.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
