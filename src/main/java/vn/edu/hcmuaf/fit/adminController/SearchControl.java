package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.services.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

@WebServlet(name = "SearchControl", value = "/search")
public class SearchControl extends HttpServlet {
    /*
        Tìm kiếm sản phẩm thú cưng sử dụng ajax - Nguyễn Sĩ Hoàng 20130267
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.searchByName(txtSearch);
        request.setAttribute("list", list);
        request.getRequestDispatcher("admin/ajax/ajax_searchProduct.jsp").forward(request, response);

        LogService logService= new LogService();
        UserAccount userAccount = (UserAccount) request.getSession().getAttribute("admin");
        logService.createUserLog(userAccount.getId(), "INFOR", "Admin "+userAccount.getUsername()+" đã tìm kiếm sản phẩm thú cưng với từ khóa "+txtSearch);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
