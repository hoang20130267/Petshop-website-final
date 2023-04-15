package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IncDecQuantityController", value = "/IncDecQuantityController")
public class IncDecQuantityController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    /*
         Tăng giảm số lượng sản phẩm trong giỏ hàng - Nguyễn Ngọc Huy 20130281
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idUpdate = request.getParameter("idUpdate");
        int amount = Integer.parseInt(request.getParameter("amount"));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart.getData().containsKey(idUpdate)) {
            Product product = cart.getData().get(idUpdate);
            product.setQuantityCart(amount);
        }
        request.getSession().setAttribute("cart", cart);
        request.getRequestDispatcher("ajax/cart.jsp").forward(request, response);

//        LogDAO logs = new LogDAO();
//        UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//        ProductService product = new ProductService();
//        logs.createUserLog(userAccount.getId(), "INFOR", "Khách hàng "+userAccount.getUsername()+" đã bình luận vào sản phẩm "+ product.getProductDetail(idUpdate).getProductName());
    }
}
