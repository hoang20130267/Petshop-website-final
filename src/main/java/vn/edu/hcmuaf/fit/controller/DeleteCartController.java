package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Cart;

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idP = request.getParameter("id");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        System.out.println(cart);
        cart.getData().remove(idP);
        System.out.println(cart);
        request.getSession().setAttribute("cart", cart);
        request.getRequestDispatcher("ajax/cart.jsp").forward(request, response);
    }
}
