package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.beans.Wishlist;
import vn.edu.hcmuaf.fit.services.LoginService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/LoginController")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("password");

        CustomerUser account = LoginService.getInstance().getAccountCustomer(username, pass);
        if (account != null) {
            if(account.isRole()){
                HttpSession session = request.getSession();
                session.setAttribute("admin", account);
                response.sendRedirect("admin/index.jsp");
            }else {
                HttpSession session = request.getSession();
                session.setAttribute("user", account);
                session.setAttribute("cart", new Cart());
                session.setAttribute("wishlist", new Wishlist());
                response.sendRedirect("index.jsp");
            }
        } else {
            request.setAttribute("loginStatus", LoginService.getInstance().getStatus());
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
