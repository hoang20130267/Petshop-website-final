package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.dao.CustomerUserDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/admin/delete-user")
public class DeleteUser extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("idUser");
        CustomerUserDAO dao = new CustomerUserDAO();
        dao.deleteUser(id);
        response.sendRedirect("index.jsp");
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