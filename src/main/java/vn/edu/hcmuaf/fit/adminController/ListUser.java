package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.dao.CustomerUserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListUser", value = "/ListUser")
public class ListUser extends HttpServlet {
    /*
        Danh sách người dùng - Nguyễn Sĩ Hoàng 20130267
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CustomerUser> list = new CustomerUserDAO().listUser();
        request.setAttribute("list", list);
        request.getRequestDispatcher("list-user.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
