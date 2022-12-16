package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.dao.CustomerUserDAO;
import vn.edu.hcmuaf.fit.services.SignUpService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateInforController", value = "/UpdateInforController")
public class UpdateInforController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String newpass = request.getParameter("newpass");
        String newpassconfirm = request.getParameter("newpassconfirm");

        CustomerUser user = (CustomerUser) request.getSession().getAttribute("user");
        if(newpass.equals(newpassconfirm)){
            new CustomerUserDAO().updateInforUser(user.getId(),fullname,phone,address,newpass);
            request.setAttribute("updateInforSusses", "Cập nhật thông tin thành công!");
            request.getRequestDispatcher("infor-user.jsp").forward(request, response);
        }else {
            request.setAttribute("passError", "Nhập lại mật khẩu không chính xác!");
            request.getRequestDispatcher("infor-user.jsp").forward(request, response);
        }

    }
}
