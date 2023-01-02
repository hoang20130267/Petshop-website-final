package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.services.CommentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveCmt", value = "/admin/RemoveCmt")
public class RemoveCmt extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("CmtId");
        CommentService.getInstance().removeComment(id);
        response.sendRedirect("list-comment.jsp");
    }
}
