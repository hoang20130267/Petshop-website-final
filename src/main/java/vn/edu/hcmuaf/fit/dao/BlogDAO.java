package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Blogs;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class BlogDAO {
    public List<Blogs> getListBlogs() {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from blogs")
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public  Blogs getContent(String id) {
        Blogs blog = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from blogs where BlogId = ?").bind(0, id)
                    .mapToBean(Blogs.class).one();
        });
        return blog;
    }

    public List<Blogs> Theloai() {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT DISTINCT CatName, CatId\n" +
                            "from blogs b join blog_from_cate bfc on b.BlogId = bfc.BlogId\n" +
                            "JOIN blogcategory bc on bc.CatId = bfc.CateId ")
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public List<Blogs> NewBlogs() {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT  *\n" +
                            "from blogs\n" +
                            "ORDER BY CreateDate DESC  \n" +
                            "LIMIT 3;")
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public static void main(String[] args) {
//        System.out.println(new BlogDAO().getListBlogs());
//        System.out.println(new BlogDAO().getContent("101"));
        System.out.println(new BlogDAO().Theloai());
    }
}
