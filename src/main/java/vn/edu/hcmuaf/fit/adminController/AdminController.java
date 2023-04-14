package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;

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

            LogDAO logs = new LogDAO();
            UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
            logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã đăng xuất khỏi hệ thống");
        }
    }
}
