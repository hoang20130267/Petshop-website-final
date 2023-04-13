package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.services.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ContactController", value = "/ContactController")
public class ContactController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");

        ContactService.getInstance().insertContact(name,email,content);
        response.sendRedirect("contact.jsp");
    }
}
