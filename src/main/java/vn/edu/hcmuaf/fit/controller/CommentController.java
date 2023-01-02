package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Comment;
import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.dao.CommentDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CommentController", value = "/CommentController")
public class CommentController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        CustomerUser cusID = (CustomerUser) request.getSession().getAttribute("user");
        String desc = request.getParameter("desc");
        System.out.println(desc);
        String date = null;
        int status = 1;
        String pID = request.getParameter("pID");
        String vote = "5";
        CommentDAO dao = new CommentDAO();
        String id = dao.InsertComment(cusID.getId(), desc, date, status, pID, vote);
        Comment cmt = dao.getComment(id);
        request.setAttribute("cmt", cmt);
        request.getRequestDispatcher("ajax/ajax-comment.jsp").forward(request,response);
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
