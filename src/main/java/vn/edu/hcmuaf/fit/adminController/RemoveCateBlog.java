package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.BlogService;
import vn.edu.hcmuaf.fit.services.DetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveCateBlog", value = "/admin/RemoveCateBlog")
public class RemoveCateBlog extends HttpServlet {
    /*
        Xóa danh mục tin tức - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("cbid");
        DetailService.getInstance().removeCateBlog(id);
        response.sendRedirect("list-category.jsp");

//        LogDAO logs = new LogDAO();
//        UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//        logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã xóa thể loại tin tức "+DetailService.getInstance().getCateBlogById(id).getCatName());
    }
}
