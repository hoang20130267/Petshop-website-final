package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.CustomerUserDAO;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.SignUpService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUserCustomerController", value = "/admin/EditUserCustomerController")
public class EditUserCustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Thêm và chỉnh sửa thông tin người dùng - Nguyễn Ngọc Huy 20130281, Nguyễn Sĩ Hoàng 20130267
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String passwd = request.getParameter("passwd");
        String passconfirm = request.getParameter("passwdconfirm");
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        int status;

        if (request.getParameter("status").equals("Mở khóa")) {
            status = 1;
        } else {
            status = 0;
        }
        System.out.println(status);

        String exe = SignUpService.getInstance().checkUser(email, username);
        if(id.isEmpty()) {
        if (fullname == "" || email == "" || username == "" || passwd == "" || passconfirm == "") {
            request.setAttribute("addUsererror", "Không được bỏ trống!");
            request.getRequestDispatcher("add-admin.jsp").forward(request, response);

//            LogDAO logs = new LogDAO();
//            UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//            logs.createAdminLog(adminAccount.getId(), "ERROR", "Admin "+adminAccount.getUsername()+" nhập thiếu thông tin");
        } else {
            if (exe != null) {
                request.setAttribute("addUsererror", exe);
                request.getRequestDispatcher("add-admin.jsp").forward(request, response);
            } else if (!passwd.equals(passconfirm)) {
                request.setAttribute("addUsererror", "Mật khẩu nhập lại không đúng!");
                request.getRequestDispatcher("add-admin.jsp").forward(request, response);

//                LogDAO logs = new LogDAO();
//                UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//                logs.createAdminLog(adminAccount.getId(), "ERROR", "Admin "+adminAccount.getUsername()+" nhập sai mật khẩu nhập lại");
            } else {
                    new CustomerUserDAO().insertCustomer(username, passwd, fullname, email, phone, address, status);
                    response.sendRedirect("list-user.jsp");

//                LogDAO logs = new LogDAO();
//                UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//                logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã thêm người dùng mới");
            }
        }
        }else{
            new CustomerUserDAO().updateCustomer(id, username, passwd, fullname, email, phone, address, status);
            response.sendRedirect("list-user.jsp");

//            LogDAO logs = new LogDAO();
//            UserAccount adminAccount = (UserAccount) request.getSession().getAttribute("admin");
//            logs.createAdminLog(adminAccount.getId(), "INFOR", "Admin "+adminAccount.getUsername()+" đã chỉnh sửa thông tin người dùng");
        }
    }
}
