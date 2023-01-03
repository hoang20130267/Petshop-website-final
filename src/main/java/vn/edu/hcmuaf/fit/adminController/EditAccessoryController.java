package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "EditAccessoryController", value = "/admin/edit-accessory")
public class EditAccessoryController extends HttpServlet {
    /*
        Thêm và chỉnh sửa sản phẩm phụ kiện - Nguyễn Sĩ Hoàng 20130267
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("pid");
        String pname = request.getParameter("name");
        String pprice = request.getParameter("price");
        String ppromo = request.getParameter("promoPrice");
        String pdescription = request.getParameter("description");
        String pquantity = request.getParameter("quantity");
        String pimage = request.getParameter("image");
        HttpSession session = request.getSession();
        ProductDAO dao = new ProductDAO();
        String cate = "3";

        if (pid.length() < 1) {
            dao.insertAccessory(pname, pimage, pprice, ppromo, pdescription, pquantity, cate);

        } else {
            dao.updateAccessory(pname, pimage, pprice, ppromo, pdescription, pquantity, cate);

        }
        response.sendRedirect("list-accessory");
    }
    private void removeOldImg(String oldImg, HttpServletRequest request) {
        if (oldImg.length() > 0) {
            String[] splited = oldImg.split(",");
            System.out.println(Arrays.toString(splited));
            for (String split : splited) {
                File fileInServer = new File(request.getServletContext().getAttribute("TEMPPRODUCT_DIR") + File.separator + split);
                if (fileInServer.exists())
                    fileInServer.delete();
                File fileInLocal = new File(request.getServletContext().getAttribute("FILEPRODUCT_DIR") + File.separator + split);
                if (fileInLocal.exists())
                    fileInLocal.delete();
            }
        }
    }

    public void copyImage(HttpServletRequest request, String[] imgFile) throws IOException {
        if (imgFile != null) {
            for (String img : imgFile) {
                File file = new File(request.getServletContext().getAttribute("TEMPPRODUCT_DIR") + File.separator + img);
                FileInputStream fis = new FileInputStream(file);
                File local = new File(request.getServletContext().getAttribute("FILEPRODUCT_DIR") + File.separator + img);
                FileOutputStream fos = new FileOutputStream(local);
                byte[] bytes = new byte[1024];
                int read;
                while ((read = fis.read(bytes)) != -1) {
                    fos.write(bytes, 0, read);
                }
                fis.close();
                fos.close();
            }
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
