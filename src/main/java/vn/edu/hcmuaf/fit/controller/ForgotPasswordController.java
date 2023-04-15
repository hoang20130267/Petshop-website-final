package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.ForgotPassword;
import vn.edu.hcmuaf.fit.beans.SignUp;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.ForgotPasswordService;
import vn.edu.hcmuaf.fit.services.MailService;
import vn.edu.hcmuaf.fit.services.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ForgotPasswordController", value = "/ForgotPasswordController")
public class ForgotPasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
         Chức năng quên mật khẩu - Nguyễn Ngọc Huy 20130281
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String OTP = Utils.getVerifyCode();
        MailService ms = MailService.getInstance();
        if (request.getSession().getAttribute("forgot") == null) {
            ForgotPassword forgot = new ForgotPassword(email, OTP);
            request.getSession().setAttribute("forgot", forgot);
        }
        if (email == "") {
            request.setAttribute("forgotError", "Hãy nhập email!");
            request.getRequestDispatcher("forget.jsp").forward(request, response);

//            LogDAO logs = new LogDAO();
//            UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//            logs.createUserLog(userAccount.getId(), "ERROR", "Nguời dùng chưa nhập email để thay đổi mật khẩu");
        } else {
            String id_user = ForgotPasswordService.getInstance().checkEmailExits(email);
            if (id_user.equals("")) {
                request.setAttribute("forgotError", "Email chưa được liên kết với tài khoản. Hãy đăng ký!");
                request.getRequestDispatcher("forget.jsp").forward(request, response);

//                LogDAO logs = new LogDAO();
//                UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//                logs.createUserLog(userAccount.getId(), "ERROR", "Email ngươi dùng chưa liên kết với tài khoản");
            } else {
                ForgotPassword forgot = (ForgotPassword) request.getSession().getAttribute("forgot");
                boolean test = ms.sendEmailForgot(forgot);
                //check if the email send successfully
                if (test) {
                    response.sendRedirect("ConfirmOTP.jsp");

//                    LogDAO logs = new LogDAO();
//                    UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//                    logs.createUserLog(userAccount.getId(), "INFOR", "Người dùng chuyển sang bước nhập OTP để thay đổi mật khẩu");
                } else {
                    System.out.println("Gửi code đến email không thành công!");

//                    LogDAO logs = new LogDAO();
//                    UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//                    logs.createUserLog(userAccount.getId(), "INFOR", "Code gửi đến người dùng không thành công");
                }
            }
        }


    }

}
