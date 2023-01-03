package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.beans.Detail;
import vn.edu.hcmuaf.fit.services.DetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCategoryProduct", value = "/admin/AddCategoryProduct")
public class AddCategoryProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
    /*
         Thêm danh mục sản phẩm - Nguyễn Ngọc Huy 20130281
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String CateName = request.getParameter("catename");
        String cateparent=request.getParameter("cateparent");
        String status = request.getParameter("status");
        String cid = request.getParameter("cid");
        CustomerUser AdminUser = (CustomerUser) request.getSession().getAttribute("admin");

        if(cid==""){
            DetailService.getInstance().insertCateProduct(AdminUser.getId(),CateName,cateparent);
        }else {
            DetailService.getInstance().updateCateProduct(cid,AdminUser.getId(),CateName,cateparent,status);
        }
        response.sendRedirect("list-category.jsp");
    }
}
