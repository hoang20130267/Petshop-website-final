package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.LogDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SearchMain", value = "/search-main")
public class SearchMain extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    /*
        Tạo khung tìm kiếm thú cưng sử dụng ajax - Nguyễn Sĩ Hoàng 20130267
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txtSearch = request.getParameter("txt");
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.searchProductByName(txtSearch);
        request.setAttribute("list", list);
        request.getRequestDispatcher("ajax/ajax_searchmain.jsp").forward(request, response);

//        LogDAO logs = new LogDAO();
//        UserAccount userAccount = (UserAccount) request.getSession().getAttribute("user");
//        logs.createUserLog(userAccount.getId(), "INFOR", "Người dùng "+userAccount.getUsername()+" tìm kiếm sản phẩm với nội dung là "+txtSearch);
    }
}
