package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    private static ProductService productService;

    public static ProductService getInstance() {
        if (productService == null) {
            productService = new ProductService();
        }
        return productService;
    }
    public static List<Product> getData() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public static List<Product> getData2() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select p.productId,p.ProductName,p.`Status`,p.Image,p.Price,p.PromotionalPrice,p.Quantity,p.Warranty,p.New,p.Description,p.Dital,p.CreateBy,p.CreateDate,p.UpdateBy,p.UpdateDate,p.giong,p.mausac,p.cannang from product p INNER JOIN product_from_cate pc on p.productId = pc.product_id\n" +
                            "where pc.cate_id = 1;")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public static List<Product> getData3() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId < 3000 and productId > 2000")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public static List<Product> getData4() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId > 3000")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getDataProductAdmin() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId < 3000")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }

    public static List<String> getData5() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select distinct giong from product having giong != \"null\" ")
                    .mapTo(String.class).stream().collect(Collectors.toList());
        });
    }
    public Product getProductDetail(String Id){
        ProductDAO dao = new ProductDAO();
        return dao.getProductDetail(Id);
    }

    public List<Product> Filter(String category,String price, String size, String order_by) {
        ProductDAO dao = new ProductDAO();
        return dao.Filter(category,price,size,order_by);
    }


    public static void main(String[] args) {
        System.out.println(getData2());
    }


//    public static List<Product> getDataProductAdmin() {
//        return JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from product where productId < 3000")
//                    .mapToBean(Product.class).stream().collect(Collectors.toList());
//        });
//    }


}
