package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {
    private List<Product> listProduct;
    private List<Product> listProductDog;
    private List<Product> listProductCat;
    private List<Product> listProductAccessory;
    private List<String> listCategory;

    public ProductDAO(){
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
    }
    public List<Product> searchByName(String txtSearch) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId <3000 and ProductName like ?").bind(0,"%"+ txtSearch + "%")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public List<Product> searchByName2(String txtSearch) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId > 3000 and ProductName like ?").bind(0,"%"+ txtSearch + "%")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }
    public static void main(String[] args) {
<<<<<<< HEAD
        new ProductDAO();
        System.out.println(new ProductDAO().searchByName("ALASKA"));
=======
        System.out.println(new ProductDAO().listCategory);
>>>>>>> 3e4f114bf734b5008fa40be927c50e3584174056
    }
}
