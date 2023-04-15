package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.DetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCategoryBlog", value = "/admin/AddCategoryBlog")
public class AddCategoryBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Thêm danh mục tin tức - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String CateName = request.getParameter("catename");
        String cateparent = request.getParameter("cateparent");
        String status = request.getParameter("status");
        String cbid = request.getParameter("cbid");
        UserAccount AdminUser = (UserAccount) request.getSession().getAttribute("admin");

        if (cbid == "") {
            DetailService.getInstance().insertCateBlog(AdminUser.getId(), CateName, cateparent);

//            LogDAO logs = new LogDAO();
//            UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//            logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã thêm "+CateName+" vào thể loại tin tức mới");
        } else {
            DetailService.getInstance().updateCateBlog(cbid, AdminUser.getId(), CateName, cateparent, status);

//            LogDAO logs = new LogDAO();
//            UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//            logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã chỉnh sửa thể loại tin tức "+CateName);
        }
        response.sendRedirect("list-category.jsp");
    }
}
