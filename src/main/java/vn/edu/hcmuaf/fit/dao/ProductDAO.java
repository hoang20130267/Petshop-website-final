package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {
    private List<Product> listProduct;
    private List<Product> listProductDog;
    private List<Product> listProductCat;
    private List<Product> listProductAccessory;
    private List<String> listCategory;
    private List<String> listCategoryAdmin;




    public ProductDAO() {
        listProduct = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        listProductDog = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId < 2000")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        listProductCat = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId < 3000 and productId > 2000")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        listProductAccessory = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId > 3000")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        listCategory = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select distinct giong from product having giong != \"null\" ")
                    .mapTo(String.class).stream().collect(Collectors.toList());
        });
        listCategory = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product_category")
                    .mapTo(String.class).stream().collect(Collectors.toList());
        });
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId <3000 and ProductName like ?").bind(0, "%" + txtSearch + "%")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public List<Product> searchByName2(String txtSearch) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId > 3000 and ProductName like ?").bind(0, "%" + txtSearch + "%")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public static Product getProductById(String id) {
        Product p = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId = ?")
                    .bind(0, id).mapToBean(Product.class).one();
        });
        return p;
    }

    public static void deleteProduct(String id) {
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("delete from product where productId = ?")
                    .bind(0, id)
                    .execute();
        });
    }

    public static void insertProduct(String id, String name, String image, String price,
                                     String description, String giong, String cannang) {
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("insert into product (productId, ProductName, Image, Price, Description, giong, cannang) values(?,?,?,?,?,?,?)")
                    .bind(0, id)
                    .bind(1, name)
                    .bind(2, image)
                    .bind(3, price)
                    .bind(4, description)
                    .bind(5, giong)
                    .bind(6, cannang)
                    .execute();
        });
    }

    public static void updateProduct(String id, String name, String image, String price,
                                     String description, String giong, String cannang) {
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("update product set ProductName = ?, Image = ?, Price = ?, Description = ?, giong = ?, cannang = ? where productId = ?")
                    .bind(6, id)
                    .bind(0, name)
                    .bind(1, image)
                    .bind(2, price)
                    .bind(3, description)
                    .bind(4, giong)
                    .bind(5, cannang)
                    .execute();
        });
    }

    public List<Product> getTop9Product() {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product limit 9")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public List<Product> getNext9Product(int amount) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product limit ?,9")
                    .bind(0, amount)
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public List<Product> get8BestProduct() {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT SUM(o.Quantity), p.ProductName, p.Price, p.Image\n" +
                            "FROM orderdetail o join product p \n" +
                            "ON o.ProductID = p.productId\n" +
                            "GROUP BY ProductName\n" +
                            "ORDER BY SUM(o.Quantity) DESC\n" +
                            "limit 8;\n")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }




    public Product getProductDetail(String id) {
        Product detail = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId = ?")
                    .bind(0,id)
                    .mapToBean(Product.class).first();
        });
        return detail;
    }


    public static void main(String[] args) {
        new ProductDAO();
//        System.out.println(new ProductDAO().getProductDetail("1002"));
        System.out.println(new ProductDAO().get8BestProduct());
//        System.out.println(new ProductDAO().searchByName("ALASKA"));
//        System.out.println(new ProductDAO().listCategory);
//        System.out.println(new ProductDAO().getTop9Product());
//        System.out.println(new ProductDAO().searchByName("ALASKA"));
//        System.out.println(new ProductDAO().listCategory);
//        deleteProduct("1000");
        updateProduct("1000", "Cho mat ngao", "deo co", "20000000", "cho ngu vcl", "cho ngu", "5kg");
//        insertProduct("1000", "Cho mat ngu", "deo co", "10000000", "cho ngu vcl", "cho ngu", "5kg");
        System.out.println(new ProductDAO().searchByName("Cho mat ngu"));
    }
}




