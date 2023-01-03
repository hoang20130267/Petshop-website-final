package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Blogs;
import vn.edu.hcmuaf.fit.dao.BlogDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SearchBlog", value = "/SearchBlog")
public class SearchBlog extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        BlogDAO dao = new BlogDAO();
        List<Blogs> list = dao.searchByNameBlog(txtSearch);
        PrintWriter out = response.getWriter();
        for (Blogs b : list) {
            out.println("  <div class=\"col-lg-6 col-md-6 col-sm-6\">\n" +
                    "                            <div class=\"blog__item\">\n" +
                    "                                <div class=\"blog__item__pic\">\n" +
                    "                                    <img src=\"" + b.getImage()+ "\" alt=\"\">\n" +
                    "                                </div>\n" +
                    "                                <div class=\"blog__item__text\">\n" +
                    "                                    <ul>\n" +
                    "                                        <li><i class=\"fa fa-calendar-o\"></i>"+b.getCreateDate()+"</li>\n" +
                    "<%--                                        <li><i class=\"fa fa-comment-o\"></i> 5 </li>--%>\n" +
                    "                                    </ul>\n" +
                    "                                    <h5><a href=\"blog-details.jsp?id" +b.getBlogId()+"\">"+b.getBlogName()+"</a></h5>\n" +
                    "                                    <p><%=b.getDescription()%></p>\n" +
                    "<%--                                    <p>Hãy dừng ngay lại việc cho chó mèo ăn chay hoặc rau củ quả với hàm lượng lớn trong một ...</p>--%>\n" +
                    "                                    <a href=\"blog-details.jsp?id=<%=b.getBlogId()%>\" class=\"blog__btn\"  >ĐỌC THÊM <span class=\"arrow_right\"></span></a>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </div>");
        }
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