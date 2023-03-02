package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Pagging", value = "/Pagging")
public class Pagging extends HttpServlet {

    public void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String category = request.getParameter("category");
        String price = request.getParameter("price");
        String orderby = request.getParameter("orderby");
        String size = request.getParameter("size");

      /*  String indexPage = request.getParameter("page");*/
        String indexPage = "1";
      /*  int sum = Integer.parseInt(request.getParameter("sum"));*/

       /* if ( indexPage == null) {
            index = 1;
        } else index = Integer.parseInt(indexPage);
        int count;
        if(sum !=  null){
            count  = Integer.parseInt(sum);
        } else {
            count = 0;
        }*/
        /*int totalPage = sum/9;
        if (totalPage % 9 != 0) {
            totalPage++;
        }
        request.setAttribute("totalPage", totalPage);
        System.out.println(sum);*/
      /*  List<Product> list = new ProductDAO().getNext9Product(index,category,price, size, orderby);
        request.setAttribute("listnext9", list);
        request.getRequestDispatcher("ajax/ajax_loadProduct.jsp").forward(request, response);*/
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    public static void main(String[] args) {

    }
}
