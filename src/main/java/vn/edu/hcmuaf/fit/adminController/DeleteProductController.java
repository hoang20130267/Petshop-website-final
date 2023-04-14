package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProductController", value = "/admin/delete-product")
public class DeleteProductController extends HttpServlet {
    /*
        Xóa sản phẩm thú cưng - Nguyễn Sĩ Hoàng 20130267
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("pid");
        ProductDAO dao = new ProductDAO();
        dao.deleteProduct(id);
        response.sendRedirect("list-products");

        LogDAO logs = new LogDAO();
        UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
        logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã xóa sản phẩm thú cưng"+dao.getProductDetail(id).getProductName());
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
