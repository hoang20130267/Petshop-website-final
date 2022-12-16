package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditAccessController", value = "/admin/update-accessory")
public class EditAccessController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("id");
        String pname = request.getParameter("name");
        String pimage = request.getParameter("pimage");
        String pprice = request.getParameter("price");
        String ppromo = request.getParameter("promoPrice");
        String pdescription = request.getParameter("description");
        String pquantity = request.getParameter("quantity");
        System.out.println(pid);
        System.out.println(pname);
        System.out.println(pimage);
        System.out.println(pprice);
        System.out.println(ppromo);
        System.out.println(pdescription);
        System.out.println(pquantity);
        ProductDAO dao = new ProductDAO();
        dao.updateAccessory(pid, pname, pimage, pprice, ppromo, pdescription, pquantity);
        response.sendRedirect("list-accessory");
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
