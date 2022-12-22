package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.Random;
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
    public List<Product> searchProductByName(String txtSearch) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where ProductName like ?").bind(0, "%" + txtSearch + "%")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
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

    public static void insertProduct(String name, String image, String price, String promoPrice,
                                     String description,String quantity, String giong, String mausac, String cannang, String cate) {
        String id = taoIDProduct();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("insert into product (productId, ProductName, Image, Price, PromotionalPrice, Description, Quantity, giong, mausac, cannang) values(?,?,?,?,?,?,?,?,?,?)")
                    .bind(0, id)
                    .bind(1, name)
                    .bind(2, "img/products/"+image)
                    .bind(3, price)
                    .bind(4, promoPrice)
                    .bind(5, description)
                    .bind(6, quantity)
                    .bind(7, giong)
                    .bind(8, mausac)
                    .bind(9, cannang)
                    .execute();
            handle.createUpdate("insert into product_from_cate values (?,?)")
                    .bind(0,id)
                    .bind(1,cate)
                    .execute();
            return true;
        });
    }
    public static void insertAccessory(String name, String image, String price, String promoPrice,
                                       String description,String quantity, String cate) {
        String id = taoIDProduct();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("insert into product (productId, ProductName, Image, Price, PromotionalPrice, Description, Quantity) values(?,?,?,?,?,?,?)")
                    .bind(0, id)
                    .bind(1, name)
                    .bind(2, "img/products/"+image)
                    .bind(3, price)
                    .bind(4, promoPrice)
                    .bind(5, description)
                    .bind(6, quantity)
                    .execute();
            handle.createUpdate("insert into product_from_cate values (?,?)")
                    .bind(0,id)
                    .bind(1,cate)
                    .execute();
            return true;
        });
    }

    public static void updateProduct(String id, String name, String image, String price, String promoPrice,
                                     String description, String quantity, String giong, String mausac, String cannang) {
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("update product set ProductName = ?, Image = ?, Price = ?, PromotionalPrice = ?, Description = ?, Quantity = ?, giong = ?, mausac = ?, cannang = ? where productId = ?")
                    .bind(9, id)
                    .bind(0, name)
                    .bind(1, image)
                    .bind(2, price)
                    .bind(3, promoPrice)
                    .bind(4, description)
                    .bind(5, quantity)
                    .bind(6, giong)
                    .bind(7, mausac)
                    .bind(8, cannang)
                    .execute();
        });
    }
    public static void updateAccessory(String id, String name, String image, String price, String promoPrice,
                                       String description, String quantity) {
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("update product set ProductName = ?, Image = ?, Price = ?, PromotionalPrice = ?, Description = ?, Quantity = ? where productId = ?")
                    .bind(6, id)
                    .bind(0, name)
                    .bind(1, image)
                    .bind(2, price)
                    .bind(3, promoPrice)
                    .bind(4, description)
                    .bind(5, quantity)
                    .execute();
        });
    }

    public List<Product> getTop9Product(String category) {
        String query = "select distinct p.productId,p.ProductName,p.Image,p.Price from product p INNER JOIN product_from_cate pfc on p.productId = pfc.product_id \n" +
                "WHERE p.`Status` = 1 \n";
        if ( category.equals("dog")) {
            query += "AND pfc.cate_id=1 \n";
        }
        if (category.equals("cat")) {
            query += "AND pfc.cate_id=2 \n";
        }
        if (category.equals("accessory")) {
            query += "AND pfc.cate_id=3 \n";
        }
        if (category == "all") {
            query = query;
        }
        String Finalquery = query + "limit 9; \n";

        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(Finalquery)
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public String test(String category) {
        String query = "select * from product p INNER JOIN product_from_cate pfc on p.productId = pfc.product_id \n" +
                "WHERE p.`Status` = 1 \n";
        if ( category == "dog") {
            query += "AND cate_id=1 \n";
        }
        if (category == "cat") {
            query += "AND cate_id=2 \n";
        }
        if (category == "accessory") {
            query += "AND cate_id=3 \n";
        }
        String Finalquery = query + "limit 9 \n";
        return Finalquery;
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
                    .bind(0, id)
                    .mapToBean(Product.class).first();
        });
        return detail;
    }
        public static String taoIDProduct() {
            String numbers = "0123456789";
            StringBuilder stringBuilder = new StringBuilder("P");
            Random rd = new Random();

            for (int i = 0; i < 4; i++) {
                int index = rd.nextInt(numbers.length());
                char rdC = numbers.charAt(index);
                stringBuilder.append(rdC);
            }
            List<String> listId = JDBIConnector.get().withHandle(
                    handle -> handle.createQuery("SELECT productId FROM product")
                            .mapTo(String.class)
                            .stream()
                            .collect(Collectors.toList()));
            if (listId.contains(stringBuilder.toString())) return taoIDProduct();
            else return stringBuilder.toString();
        }
    public static String taoIDCate() {
        String numbers = "0123456789";
        StringBuilder stringBuilder = new StringBuilder("D");
        Random rd = new Random();

        for (int i = 0; i < 2; i++) {
            int index = rd.nextInt(numbers.length());
            char rdC = numbers.charAt(index);
            stringBuilder.append(rdC);
        }
        List<String> listId = JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT CatId FROM product_category")
                        .mapTo(String.class)
                        .stream()
                        .collect(Collectors.toList()));
        if (listId.contains(stringBuilder.toString())) return taoIDCate();
        else return stringBuilder.toString();
    }

//    public Product getProductDetail(String Id){
//        Product product=JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT p.productId, p.ProductName, p.`Status`,p.Image,p.Price," +
//                        "p.PromotionalPrice,p.Quantity,p.Warranty,p.New,p.Desription,p.Dital,p.CreateBy,p.CreateDate,p.UpdateBy," +
//                        "p.UpdateDate,p.giong,p.mausac,p.cannang FROM product p WHERE p.`Status`=1 AND p.productId=?;")
//                .bind(0,Id)
//                .mapToBean(Product.class)
//                .one());
//        ProductSale sale=null;
//        try {
//            sale= JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT DISTINCT ad.Id_adver,ad.Id_product,ad.name_adver,ad.discount,ad.Img,ad.Desription,ad.date_start,date_end\n" +
//                            "FROM adver ad\n" +
//                            "WHERE ad.date_end > DATE(NOW()) AND ad.Id_product=?;")
//                    .bind(0,Id)
//                    .mapToBean(ProductSale.class)
//                    .one()
//            );
//        }catch (Exception e){
//
//        }
//        product.setSales(sale);
//        return product;
//    }


//    public static void main(String[] args) {
//        new ProductDAO();
//        System.out.println(new ProductDAO().getProductDetail("1002"));
//        System.out.println(new ProductDAO().get8BestProduct());
//        System.out.println(new ProductDAO().searchByName("ALASKA"));
//        System.out.println(new ProductDAO().listCategory);
//        System.out.println(new ProductDAO().getTop9Product());
//        System.out.println(new ProductDAO().searchByName("ALASKA"));
//        System.out.println(new ProductDAO().listCategory);
//        deleteProduct("3041");
//        updateProduct("1000", "Cho mat ngao", "deo co", "20000000","1000", "cho ngu vcl", "5","alaska","trang", "5kg");
//        insertProduct("1000", "Cho mat ngu", "deo co", "100000", "1000", "cho ngu", "5","alaska","trang", "5kg");
//        insertAccessory("3041", "Chuong", "deo co", "100000", "1000", "cho ngu", "5");
//        updateAccessory("3041", "Deo phai chuong", "deo co", "200000", "1000", "cho ngu", "5");
//        System.out.println(new ProductDAO().searchByName2("chuong"));
    public static void main(String[] args){
        System.out.println(new ProductDAO().getTop9Product("cat"));
//        System.out.println(new ProductDAO().test("dog"));
    }
}




