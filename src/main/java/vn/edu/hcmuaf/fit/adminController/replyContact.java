package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.ContactService;
import vn.edu.hcmuaf.fit.services.DetailService;
import vn.edu.hcmuaf.fit.services.MailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "replyContact", value = "/admin/replyContact")
public class replyContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*
        Chức năng phản hồi liên hệ của khách hàng bằng email cho admin
        Create by Nguyễn Ngọc Huy - 20130281
         */
        String id= request.getParameter("id");
        String name= request.getParameter("name");
        String email= request.getParameter("email");
        String content= request.getParameter("content");

        UserAccount admin = (UserAccount) request.getSession().getAttribute("admin");
        String nameAdmin = admin.getName();

        //Gửi email
        boolean check = MailService.getInstance().sendEmailContact(email,name,content,nameAdmin);

        if (check) {
            // cập nhật lại trạng thái
            ContactService.getInstance().updateStatus(id);
            response.sendRedirect("list-contact.jsp");

//            LogDAO logs = new LogDAO();
//            UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//            logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã phản hồi qua email người dùng");
        } else {
            System.out.println("Gửi email không thành công!");

//            LogDAO logs = new LogDAO();
//            UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//            logs.createAdminLog(adminAccount.getId(), "ERROR", "Gửi phản hồi không thành công");
        }

    }
}
