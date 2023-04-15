package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.CommentService;
import vn.edu.hcmuaf.fit.services.DetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveCmt", value = "/admin/RemoveCmt")
public class RemoveCmt extends HttpServlet {
    /*
        Xóa bình luận admin - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("CmtId");
        CommentService.getInstance().removeComment(id);
        response.sendRedirect("list-comment.jsp");

//        LogDAO logs = new LogDAO();
//        UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//        logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã xóa bình luận");
    }
}
