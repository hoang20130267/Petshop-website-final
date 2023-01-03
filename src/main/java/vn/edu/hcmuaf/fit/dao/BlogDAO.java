package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.BlogCategory;
import vn.edu.hcmuaf.fit.beans.Blogs;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class BlogDAO {
    public List<Blogs> getListBlogs() {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from blogs\n" +
                                    "WHERE `Status` = 1"
                            )
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public  Blogs getContent(String id) {
        Blogs blog = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from blogs b where b.BlogId = ?\n" +
                                    "and `Status` =1"
                            ).bind(0, id)
                    .mapToBean(Blogs.class).one();
        });
        return blog;
    }

    public List<Blogs> Theloai() {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT DISTINCT CatName, CatId\n" +
                            "from blogs b join blog_from_cate bfc on b.BlogId = bfc.BlogId\n" +
                            "JOIN blogcategory bc on bc.CatId = bfc.CateId\n " +
                            "Where b.`Status` = 1  \n"
                    )
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public List<Blogs> NewBlogs() {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT  * from blogs b\n" +
                            "Where b.`Status` = 1 \n" +
                            "ORDER BY CreateDate DESC \n" +
                            "LIMIT 3;")
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public List<Blogs> AdminListBlog() {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT  * FROM blogs")
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public Blogs getBlog(String id) {
        Blogs blog =   JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT  * FROM blogs where BlogId = ?").bind(0,id)
                    .mapToBean(Blogs.class).first();
        });
        return blog;
    }

    public List<BlogCategory> listBlogCate() {
        List<BlogCategory> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT DISTINCT bc. *\n" +
                            "                            from blogs b join blog_from_cate bfc on b.BlogId = bfc.BlogId\n" +
                            "                            join blogcategory bc on bc.CatId = bfc.CateId;"
                    )
                    .mapToBean(BlogCategory.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<Blogs> listBlogCateById(String id) {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT b.BlogId, b.BlogName, bfc.CateId\n" +
                            "from blogs b join blog_from_cate bfc on b.BlogId = bfc.BlogId\n" +
                            "join blogcategory bc on bc.CatId = bfc.CateId\n" +
                            "where bc.CatId = ?;"
                    ).bind(0,id)
                    .mapToBean(Blogs.class)
                    .stream().collect(Collectors.toList());
        });
        return list;
    }

    public boolean test(String id) {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT b.BlogId, b.BlogName, bfc.CateId\n" +
                            "from blogs b join blog_from_cate bfc on b.BlogId = bfc.BlogId\n" +
                            "join blogcategory bc on bc.CatId = bfc.CateId\n" +
                            "where bc.CatId = ?;"
                    ).bind(0,id)
                    .mapToBean(Blogs.class)
                    .stream().collect(Collectors.toList());
        });
        if (list.contains("102")) {
            return true;
        }
        return false;
    }
    public List<Blogs> searchByNameBlog(String txtSearch) {
        List<Blogs> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from blogs where BlogName like ?")
                    .bind(0, "%" + txtSearch + "%")
                    .mapToBean(Blogs.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public static void main(String[] args) {
//        System.out.println(new BlogDAO().getListBlogs());
//        System.out.println(new BlogDAO().getContent("101"));
//        System.out.println(new BlogDAO().getBlog("101"));
//        System.out.println(new BlogDAO().listBlogCateById("2"));
        System.out.println(new BlogDAO().test("1"));
//        System.out.println(new BlogDAO().listBlogCateById("101"));
    }
}
