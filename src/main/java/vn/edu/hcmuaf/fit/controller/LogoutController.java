package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.services.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LogoutController", value = "/LogoutController")
public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
         Chức năng đăng xuất - Nguyễn Ngọc Huy 20130281
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session!=null){
            session.invalidate();
            response.sendRedirect("login.jsp");

            LogService logService= new LogService();
            UserAccount user = (UserAccount) request.getSession().getAttribute("user");
            logService.createUserLog(user.getId(), "INFOR", "Người dùng "+user.getUsername()+" đăng xuất khỏi hệ thống");
        }
    }
}
