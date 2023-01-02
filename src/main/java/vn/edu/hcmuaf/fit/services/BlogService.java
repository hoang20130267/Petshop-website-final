package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.Blogs;
import vn.edu.hcmuaf.fit.dao.BlogDAO;

import java.util.List;

public class BlogService {

    public static List<Blogs> getListBlogs() {
        BlogDAO dao = new BlogDAO();
        return dao.getListBlogs();
    }
    public static Blogs getContent(String id) {
        BlogDAO dao = new BlogDAO();
        return dao.getContent(id);
    }
    public static  List<Blogs> Theloai() {
        BlogDAO dao = new BlogDAO();
        return dao.Theloai();
    }
    public static  List<Blogs> getNewBlog() {
        BlogDAO dao = new BlogDAO();
        return dao.NewBlogs();
    }
}