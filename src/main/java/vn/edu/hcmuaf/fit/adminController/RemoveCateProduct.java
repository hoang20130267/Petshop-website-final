package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.DetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveCateProduct", value = "/admin/RemoveCateProduct")
public class RemoveCateProduct extends HttpServlet {
    /*
        Xóa danh mục sản phẩm - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("cid");
        DetailService.getInstance().removeCateProduct(id);
        response.sendRedirect("list-category.jsp");

        LogDAO logs = new LogDAO();
        UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
        logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã xóa thể loại tin tức "+DetailService.getInstance().getCateProductById(id).getCatName());
    }
}
