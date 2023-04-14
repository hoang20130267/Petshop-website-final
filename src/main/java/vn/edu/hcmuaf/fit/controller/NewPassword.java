package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.ForgotPassword;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.ForgotPasswordService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NewPassword", value = "/NewPassword")
public class NewPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    /*
        Đổi mật khẩu người dùng - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newPass = request.getParameter("newpass");
        String confirmNewPass = request.getParameter("confirmpass");

        HttpSession session = request.getSession();
        ForgotPassword forgot = (ForgotPassword) session.getAttribute("forgot");

        if(newPass.equals(confirmNewPass)){
            ForgotPasswordService.getInstance().updatePasswordFromEmail(newPass,forgot.getEmail());
            response.sendRedirect("login.jsp");

            LogDAO logs = new LogDAO();
            UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
            logs.createUserLog(userAccount.getId(), "INFOR", "Người dùng đổi mật khẩu thành công");
        }else {
            request.setAttribute("errorConfirm", "Mật khẩu nhập lại không đúng! ");
            request.getRequestDispatcher("newPassword.jsp").forward(request, response);

            LogDAO logs = new LogDAO();
            UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
            logs.createUserLog(userAccount.getId(), "ERROR", "Người dùng đổi mật khẩu không thành công");
        }
    }
}
