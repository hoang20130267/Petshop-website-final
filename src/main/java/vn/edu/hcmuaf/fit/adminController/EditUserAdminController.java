package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.dao.CustomerUserDAO;
import vn.edu.hcmuaf.fit.services.SignUpService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUserAdminController", value = "/admin/EditUserAdminController")
public class EditUserAdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Thêm và chỉnh sửa thông tin admin - Nguyễn Ngọc Huy 20130281, Nguyễn Sĩ Hoàng 20130267
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

        if(request.getParameter("status").equals("Mở khóa")){
            status=1;
        }else {
            status=0;
        }
        System.out.println(status);

        String exe = SignUpService.getInstance().checkUser(email,username);
        if(id.isEmpty()) {
        if (fullname == "" || email == "" || username == "" || passwd == "" || passconfirm == "") {
            request.setAttribute("addAdminerror", "Không được bỏ trống!");
            request.getRequestDispatcher("add-admin.jsp").forward(request, response);
        } else {
            if (exe != null) {
                request.setAttribute("addAdminerror", exe);
                request.getRequestDispatcher("add-admin.jsp").forward(request, response);
            } else if (!passwd.equals(passconfirm)) {
                request.setAttribute("addAdminerror", "Mật khẩu nhập lại không đúng!");
                request.getRequestDispatcher("add-admin.jsp").forward(request, response);
            } else {
                    new CustomerUserDAO().insertAdmin(username, passwd, fullname, email, phone, address, status);
                    response.sendRedirect("list-admin.jsp");
                    }
            }
        }else{
            new CustomerUserDAO().updateAdmin(id, username, passwd, fullname, email, phone, address, status);
            response.sendRedirect("list-admin.jsp");
        }
    }

}
