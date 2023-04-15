package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteCartController", value = "/DeleteCartController")
public class DeleteCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Xóa sản phẩm khỏi giỏ hàng sử dụng ajax - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idP = request.getParameter("idP");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        System.out.println(idP);
        cart.getData().remove(idP);
        request.getSession().setAttribute("cart", cart);
        request.getRequestDispatcher("ajax/cart.jsp").forward(request, response);

//        LogDAO logs = new LogDAO();
//        UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//        ProductService product = new ProductService();
//        logs.createUserLog(userAccount.getId(), "INFOR", "Khách hàng "+userAccount.getUsername()+" đã xóa sản phẩm "+ product.getProductDetail(idP).getProductName() +" khỏi giỏ hàng");
    }
}
