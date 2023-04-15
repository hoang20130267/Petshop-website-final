package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckoutController", value = "/CheckoutController")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
         Chức năng thanh toán - Nguyễn Ngọc Huy 20130281
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fulname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String notice = request.getParameter("notice");

        UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        OrderService.getInstance().insertOrder(userAccount.getId(),fulname,phone,address,email,notice,cart);
        request.getSession().setAttribute("cart",new Cart());
        response.sendRedirect("my-orders.jsp");

//        LogDAO logs = new LogDAO();
//        logs.createUserLog(userAccount.getId(), "INFOR", "Khách hàng "+userAccount.getUsername()+" chuyển qua mục thanh toán");
    }
}
