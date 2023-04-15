package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.CommentDAO;
import vn.edu.hcmuaf.fit.dao.LogDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCommentController", value = "/DeleteCommentController")
public class DeleteCommentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Xóa bình luận của người dùng - Nguyễn Sĩ Hoàng 20130267
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        new CommentDAO().RemoveComment(id);

//        LogDAO logs = new LogDAO();
//        UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//        logs.createUserLog(userAccount.getId(), "INFOR", "Khách hàng "+userAccount.getUsername()+" xóa bình luận");
    }
}
