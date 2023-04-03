package vn.edu.hcmuaf.fit.adminController;

import vn.edu.hcmuaf.fit.beans.UserAccount;
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
        String pid = request.getParameter("id");
        String pname = request.getParameter("name");
        String pprice = request.getParameter("price");
        String PromotionalPrice = request.getParameter("PromotionalPrice");
        String pdescription = request.getParameter("description");
        String detail = request.getParameter("detail");
        String mausac = request.getParameter("mausac");
        String cateChild = request.getParameter("cateChild");
        String Promotional = request.getParameter("Promotional");
        String pquantity = request.getParameter("quantity");
        String pimage = request.getParameter("image");
        String cannang = request.getParameter("cannang");
        String status = request.getParameter("status");
        String oldImg = request.getParameter("oldImg");
        UserAccount admin = (UserAccount) request.getSession().getAttribute("admin");
        HttpSession session = request.getSession();
        ProductDAO dao = new ProductDAO();
        String cate = "3";
        System.out.println(pid);
        if (pid.length() < 1) {
            dao.insertAccessory(admin.getId(),pname,pimage,pprice,pdescription,detail,pquantity,mausac,cannang,cate,cateChild,status,Promotional,PromotionalPrice);
            removeOldImg(oldImg, request);
            copyImage(request, pimage);
        } else {
            dao.updateAccessory(pid,admin.getId(),pname,pimage,pprice,pdescription,detail,pquantity,mausac,cannang,status,Promotional,PromotionalPrice);
            removeOldImg(oldImg, request);
            copyImage(request, pimage);
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

    public void copyImage(HttpServletRequest request, String imgFile) throws IOException {
        if (imgFile != null) {
            File file = new File(request.getServletContext().getAttribute("TEMPPRODUCT_DIR") + File.separator + imgFile);
            FileInputStream fis = new FileInputStream(file);
            File local = new File(request.getServletContext().getAttribute("FILEPRODUCT_DIR") + File.separator + imgFile);
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
