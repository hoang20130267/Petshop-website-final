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

@WebServlet(name = "AddProductController", value = "/admin/edit-product")
public class EditProductController extends HttpServlet {
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
        String pgiong = request.getParameter("giong");
        String pmausac = request.getParameter("mausac");
        String pcannang = request.getParameter("cannang");
        String pimage = request.getParameter("image");
        String oldImg = request.getParameter("oldImg");
        HttpSession session = request.getSession();
        ProductDAO dao = new ProductDAO();
        String cate = null;
        if(pgiong.equals("Chó")){
            cate = "1";
        }else {
            cate ="2";
        }
        if (pid == null) {
        dao.insertProduct(pname, pimage, pprice, ppromo, pdescription, pquantity, pgiong, pmausac, pcannang, cate);
            removeOldImg(oldImg, request);
            copyImage(request, pimage);
        } else {
            dao.updateProduct(pname, pimage, pprice, ppromo, pdescription, pquantity, pgiong, pmausac, pcannang, cate);
            removeOldImg(oldImg, request);
            copyImage(request, pimage);
        }
        response.sendRedirect("list-products");
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
