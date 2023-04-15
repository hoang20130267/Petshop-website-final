package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.BlogDAO;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.services.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.Provider;

@WebServlet(name = "DeleteBlog", value = "/admin/DeleteBlog")

public class DeleteBlog extends HttpServlet {
    /*
        Xóa tin tức - Nguyễn Huy Hoàng 20130266
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        BlogService service = new BlogService();
        service.deleteBlog(id);
        response.sendRedirect("list-blog.jsp");

//        LogDAO logs = new LogDAO();
//        UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//        logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã xóa tin tức "+service.getContent(id).getBlogName());
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