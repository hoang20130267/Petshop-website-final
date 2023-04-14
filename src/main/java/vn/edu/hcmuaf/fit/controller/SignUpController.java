package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.SignUp;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.MailService;
import vn.edu.hcmuaf.fit.services.SignUpService;
import vn.edu.hcmuaf.fit.services.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUpController", value = "/SignUpController")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Chức năng đăng ký - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String user = request.getParameter("user");
        String passwd = request.getParameter("passwd");
        String phone = request.getParameter("phone");
        String confirmpassword = request.getParameter("confirmpassword");
        String code = Utils.getVerifyCode();

        MailService ms = MailService.getInstance();

        if (request.getSession().getAttribute("Singup") == null) {
            SignUp signUp = new SignUp(fullname, email, user, passwd, phone, Utils.maHoaMK(passwd), code);
            request.getSession().setAttribute("Signup", signUp);
        }
        if (fullname == "" || email == "" || user == "" || passwd == "" || confirmpassword == "") {
            request.setAttribute("registerError", "Không được bỏ trống!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

            LogDAO logs = new LogDAO();
            UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
            logs.createUserLog(userAccount.getId(), "ERROR", "Người dùng bỏ trống thông tin");
        } else {
            String exe = SignUpService.getInstance().checkUser(email, user);
            if (exe != null) {
                request.setAttribute("registerError", exe);
                request.getRequestDispatcher("signup.jsp").forward(request, response);

                LogDAO logs = new LogDAO();
                UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
                logs.createUserLog(userAccount.getId(), "ERROR", "Lỗi tạo tài khoản");
            } else if (!passwd.equals(confirmpassword)) {
                request.setAttribute("registerError", "Mật khẩu nhập lại không đúng!");
                request.getRequestDispatcher("signup.jsp").forward(request, response);

                LogDAO logs = new LogDAO();
                UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
                logs.createUserLog(userAccount.getId(), "ERROR", "Người dùng nhập lại mật khẩu không chính xác");
            } else {
                SignUp users = (SignUp) request.getSession().getAttribute("Signup");
                boolean test = ms.sendEmailSignUp(users);
                //check if the email send successfully
                if (test) {
                    HttpSession session = request.getSession();
                    session.setAttribute("authcode", users);
                    response.sendRedirect("verify.jsp");

                    LogDAO logs = new LogDAO();
                    UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
                    logs.createUserLog(userAccount.getId(), "INFOR", "Người dùng chuyển sang trang nhập mã OTP");
                } else {
                    System.out.println("Gửi code đến email không thành công!");

                    LogDAO logs = new LogDAO();
                    UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
                    logs.createUserLog(userAccount.getId(), "ERROR", "Gửi mã OTP không thành công");
                }
            }
        }
    }


}

