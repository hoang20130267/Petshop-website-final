package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "AddProductController", value = "/admin/add-product")
public class AddProductController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("pid");
        String pname = request.getParameter("name");
        String pprice = request.getParameter("price");
        String ppromo = request.getParameter("promoPrice");
        String pdescription = request.getParameter("description");
        String pquantity = request.getParameter("quantity");
        String pgiong = request.getParameter("giong");
        String pmausac = request.getParameter("mausac");
        String pcannang = request.getParameter("cannang");
        String pimage = request.getParameter("image");
        HttpSession session = request.getSession();
        System.out.println(pid);
        ProductDAO dao = new ProductDAO();
        if (pid.length() < 1) {
        dao.insertProduct(pid, pname, pimage, pprice, ppromo, pdescription, pquantity, pgiong, pmausac, pcannang);

        } else {
            dao.updateProduct(pid, pname, pimage, pprice, ppromo, pdescription, pquantity, pgiong, pmausac, pcannang);

        }
        response.sendRedirect("list-products");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
