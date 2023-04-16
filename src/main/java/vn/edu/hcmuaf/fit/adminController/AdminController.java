package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.services.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminController", value = "/admin/AdminController")
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Đăng xuất admin - Nguyễn Ngọc Huy 20130281
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session != null) {
            session.invalidate();
            response.sendRedirect("../login.jsp");

            LogService logService= new LogService();
            UserAccount userAccount = (UserAccount) request.getSession().getAttribute("admin");
            logService.createUserLog(userAccount.getId(), "INFOR", "Admin "+userAccount.getUsername()+" đã đăng xuất khỏi hệ thống");
        }
    }
}
