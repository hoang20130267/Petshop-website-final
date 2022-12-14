package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddProductController", value = "/admin/add-product")
public class AddProductController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("id");
        String pname = request.getParameter("name");
        String pimage = request.getParameter("pimage");
        String pprice = request.getParameter("price");
        String pdescription = request.getParameter("description");
        String pgiong = request.getParameter("giong");
        String pcannang = request.getParameter("cannang");
        HttpSession session = request.getSession();


        ProductDAO dao = new ProductDAO();
        dao.insertProduct(pid, pname, pimage, pprice, pdescription, pgiong, pcannang);
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
