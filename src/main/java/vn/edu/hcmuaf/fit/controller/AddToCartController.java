package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "AddToCartController", value = "/AddCartController")
public class AddToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Thêm sản phẩm vào giỏ hàng sử dụng ajax - Nguyễn Ngọc Huy 20130281
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("idAdd").substring(8);
        int quantity = 1;
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        Product product = ProductService.getInstance().getProductDetail(id);
        product.setQuantityCart(quantity);
        cart.put(id, product);
        request.getSession().setAttribute("cart", cart);
        request.setAttribute("productDetails", product);

    }
}
