package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SearchControlAccessory", value = "/search-accessory")
public class SearchControlAccessory extends HttpServlet {
    /*
        Tìm kiếm sản phẩm phụ kiện sử dụng ajax - Nguyễn Sĩ Hoàng 20130267
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.searchByName2(txtSearch);
        PrintWriter out = response.getWriter();
        for (Product p : list) {
            out.println("<div class=\"col-md-3\">\n" +
                    "              <div class=\"white_card position-relative mb_20\">\n" +
                    "                <div class=\"card-body\">\n" +
                    "                  <!-- <div class=\"ribbon1 rib1-primary\">\n" +
                    "                    <span class=\"text-white text-center rib1-primary\"\n" +
                    "                      >50% off</span\n" +
                    "                    >\n" +
                    "                  </div> -->\n" +
                    "                  <img\n" +
                    "                    src=\"../"+p.getImage()+"\"\n" +
                    "                    alt=\"\"\n" +
                    "                    class=\"d-block mx-auto my-4\"\n" +
                    "                    height=\"150\"\n" +
                    "                  />\n" +
                    "                  <div class=\"row my-4\">\n" +
                    "                    <div class=\"col\">\n" +
                    "                      <!-- <span class=\"badge_btn_3 mb-1\" style=\"margin-left: 63px;\">Chó Phốc</span> -->\n" +
                    "                      <a href=\"#\" class=\"f_w_400 color_text_3 f_s_14 d-block\"\n" +
                    "                      style=\"text-align: center;\">"+p.getProductName()+"</a\n" +
                    "                      >\n" +
                    "                    </div>\n" +
                    "                    <div class=\"col-auto\">\n" +
                    "                      <h4 class=\"text-dark mt-0\" style=\"margin-left: 65px;\">\n" +
                    "                        "+p.getPrice()+"đ\n" +
                    "\n" +
                    "                      </h4>\n" +
                    "                      <ul\n" +
                    "                        class=\"list-inline mb-0 product-review align-self-center\" style=\"margin-left: 35px;\"\n" +
                    "                      >\n" +
                    "                        <li class=\"list-inline-item\">\n" +
                    "                          <i class=\"fas fa-star text-warning font-16\"></i>\n" +
                    "                        </li>\n" +
                    "                        <li class=\"list-inline-item\">\n" +
                    "                          <i\n" +
                    "                            class=\"fas fa-star text-warning font-16 ms -n2\"\n" +
                    "                          ></i>\n" +
                    "                        </li>\n" +
                    "                        <li class=\"list-inline-item\">\n" +
                    "                          <i\n" +
                    "                            class=\"fas fa-star text-warning font-16 ms -n2\"\n" +
                    "                          ></i>\n" +
                    "                        </li>\n" +
                    "                        <li class=\"list-inline-item\">\n" +
                    "                          <i\n" +
                    "                            class=\"fas fa-star text-warning font-16 ms -n2\"\n" +
                    "                          ></i>\n" +
                    "                        </li>\n" +
                    "                        <li class=\"list-inline-item\">\n" +
                    "                          <i\n" +
                    "                            class=\"fas fa-star-half text-warning font-16 ms -n2\"\n" +
                    "                          ></i>\n" +
                    "                        </li>\n" +
                    "                      </ul>\n" +
                    "                    </div>\n" +
                    "                  </div>\n" +
                    "                  <div class=\"d-grid\">\n" +
                    "                      <a class=\"btn_2\" href=\"edit-accessory.jsp?pid="+p.getProductId()+"\" style=\"margin-top: 3px; text-align: center;\">Chỉnh sửa</a>\n" +
                    "                      <a class=\"btn_2\" href=\"delete-accessory?pid="+p.getProductId()+"\" style=\"margin-top: 3px; text-align: center;\">Xóa</a>\n" +
                    "                  </div>\n" +
                    "                </div>\n" +
                    "              </div>\n" +
                    "            </div>");
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
