package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListAccessory", value = "/admin/list-accessory")
public class ListAccessory extends HttpServlet {
    /*
        Danh sách sản phẩm phụ kiện trong admin - Nguyễn Sĩ Hoàng 20130267
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        String total = request.getParameter("total");
        request.setAttribute("total",total);
        List<Product> list = dao.getFullAdminAccessory();
        request.setAttribute("list", list);
        request.setAttribute("numb", list.size());
        request.getRequestDispatcher("list-accessory.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
