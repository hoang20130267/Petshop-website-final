package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.Blogs;
import vn.edu.hcmuaf.fit.dao.BlogDAO;

import java.util.List;

public class BlogService {

    public static List<Blogs> getListBlogs() {
        BlogDAO dao = new BlogDAO();
        return dao.getListBlogs();
    }

}
