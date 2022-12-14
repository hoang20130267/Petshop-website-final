package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "LoadMoreController", value = "/loadMore")
public class LoadMoreController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String amount = request.getParameter("amount");
        int amount_int = Integer.parseInt(amount);
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.getNext9Product(amount_int);
        PrintWriter print = response.getWriter();
        for (Product p : list) {
            print.println("<div class=\"col-lg-4 col-md-6 col-sm-6 amount-pd \">\n" +
                    "                        <div class=\"product__item\">\n" +
                    "                            <div class=\"product__item__pic set-bg\" data-setbg=\"" + p.getImage() + "\" style=\"background-image: url("+p.getImage()+");\" >\n" +
                    "                                <ul class=\"product__item__pic__hover\">\n" +
                    "                                    <li><a href=\"#\"><i class=\"fa fa-heart\"></i></a></li>\n" +
                    "                                    <li><a href=\"#\"><i class=\"fa fa-retweet\"></i></a></li>\n" +
                    "                                    <li><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n" +
                    "                                </ul>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"product__item__text\">\n" +
                    "                                <h6><a href=\"product-details.jsp?id=" + p.getProductId() + "\">" + p.getProductName() + "\n" +
                    "                                </a></h6>\n" +
                    "                                <h5>" + p.getPrice() + "đ</h5>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
