package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Detail;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.controller.Category;
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
            return handle.createQuery("select * from product where productId > 3000 and ProductName like ?")
                    .bind(0, "%" + txtSearch + "%")
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
            handle.createUpdate("SET FOREIGN_KEY_CHECKS = 0").execute();
            handle.createUpdate("delete from product where productId = ?")
                    .bind(0, id)
                    .execute();
            handle.createUpdate("SET FOREIGN_KEY_CHECKS = 1").execute();
            return true;
        });
    }

    public static void insertProduct(String idAdmin,String name, String image, String price, String description,
                                     String detail,String quantity, String giong, String mausac,
                                     String cannang, String cateParent, String cateChild, String status, String promotional,
                                     String PromotionalPrice) {
        String id = taoIDProduct();
        String date = java.time.LocalDate.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("insert into product (productId, ProductName, Image, Price, Description, " +
                            "Dital, Quantity, CreateBy, CreateDate, giong, mausac, cannang, `Status`, PromotionalPrice,Promotional) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)")
                    .bind(0, id)
                    .bind(1, name)
                    .bind(2, "img/products/"+image)
                    .bind(3, price)
                    .bind(4, description)
                    .bind(5, detail)
                    .bind(6, quantity)
                    .bind(7, idAdmin)
                    .bind(8, date)
                    .bind(9, giong)
                    .bind(10,mausac)
                    .bind(11,cannang)
                    .bind(12,Integer.parseInt(status))
                    .bind(13,PromotionalPrice)
                    .bind(14,Integer.parseInt(promotional))
                    .execute();
            handle.createUpdate("insert into product_from_cate values (?,?)")
                    .bind(0,id)
                    .bind(1,cateParent)
                    .execute();
            handle.createUpdate("insert into product_from_cate values (?,?)")
                    .bind(0,id)
                    .bind(1,cateChild)
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

    public static void updateProduct(String id, String idAdmin,String name, String image, String price, String description,
                                     String detail,String quantity, String giong, String mausac,
                                     String cannang,String status, String Promotional, String PromotionalPrice) {
        String date = java.time.LocalDate.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE product SET ProductName=?,`Status`=?,Image=?,Price=?,Quantity=?,Description=?,Dital=?,UpdateBy=?,UpdateDate=?,giong=?,mausac=?,cannang=?,PromotionalPrice=?, Promotional=?\n" +
                            "WHERE productId=?;\n")
                    .bind(0, name)
                    .bind(1, Integer.parseInt(status))
                    .bind(2, image)
                    .bind(3, price)
                    .bind(4, quantity)
                    .bind(5, description)
                    .bind(6, detail)
                    .bind(7, idAdmin)
                    .bind(8, date)
                    .bind(9, giong)
                    .bind(10,mausac)
                    .bind(11,cannang)
                    .bind(12,PromotionalPrice)
                    .bind(13,Promotional)
                    .bind(14,id)
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

    public List<Product> getFullProduct(String category,String price, String size, String order_by) {
        String query = "select distinct p.productId,p.ProductName,p.Image,p.Price, p.cannang from product p INNER JOIN product_from_cate pfc on p.productId = pfc.product_id \n" +
                "WHERE p.`Status` = 1 ";
        if ( category != null) {
            if (!category.equals("all")) {
                query += "AND pfc.cate_id= ? \n";
            }
        }
        if (price != null) {
            if (!price.equals("-1")) {
                String[] splited = price.split("-");
                query += " AND p.price >= " + Double.parseDouble(splited[0]) + " AND p.price <= " + Double.parseDouble(splited[1]);
            }

        }
        if (size != null) {
            String[] splited = size.split("-");
            query += " AND p.cannang >= " + Double.parseDouble(splited[0]) + " AND p.cannang <= " + Double.parseDouble(splited[1]);
        }
        if (order_by != null) {
            switch (order_by) {
                case "0" -> query += "\n ";
                case "1" -> query += " ORDER BY p.price ASC \n";
                case "2" -> query += " ORDER BY p.price DESC \n";
                case "3" -> query += " ORDER BY p.ProductName ASC \n";
                case "4" -> query += " ORDER BY p.ProductName DESC \n";
            }
        }
        String Finalquery = query;
        List<Product> list = null;
        if (!category.equals("all")) {
            list = JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery(Finalquery)
                        .bind(0, category)

                        .mapToBean(Product.class).stream().collect(Collectors.toList());
            });
        } else
        {
            list = JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery(Finalquery)

                        .mapToBean(Product.class).stream().collect(Collectors.toList());
            });
        }
        return list;
    }



    public List<Product> getNext9Product(int amount, String category,String price, String size, String order_by) {
        String query = "select distinct p.* from product p INNER JOIN product_from_cate pfc on p.productId = pfc.product_id \n" +
                "WHERE p.`Status` = 1 ";
        if ( category != null) {
            if (!category.equals("all")) {
                query += "AND pfc.cate_id= ? \n";
            }
        }
        if (price != null) {
            if (!price.equals("-1")) {
                String[] splited = price.split("-");
                query += " AND p.price >= " + Double.parseDouble(splited[0]) + " AND p.price <= " + Double.parseDouble(splited[1]);
            }
        }
        if (size != null) {
            String[] splited = size.split("-");
            query += " AND p.cannang >= " + Double.parseDouble(splited[0]) + " AND p.cannang <= " + Double.parseDouble(splited[1]);
        }

        if (order_by != null) {
            switch (order_by) {
                case "0" -> query += "\n ";
                case "1" -> query += " ORDER BY p.price ASC \n";
                case "2" -> query += " ORDER BY p.price DESC \n";
                case "3" -> query += " ORDER BY p.ProductName ASC \n";
                case "4" -> query += " ORDER BY p.ProductName DESC \n";
            }
        }
        String Finalquery = query + "limit ?,9; \n";
        List<Product> list = null;
        if (!category.equals("all")) {
            list = JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery(Finalquery)
                        .bind(0, category)
                        .bind(1, amount)
                        .mapToBean(Product.class).stream().collect(Collectors.toList());
            });
        } else
        {
            list = JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery(Finalquery)
                        .bind(0, amount)
                        .mapToBean(Product.class).stream().collect(Collectors.toList());
            });
            }
        return list;
    }

    public List<Product> get8BestProduct() {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT SUM(o.Quantity), p.*\n" +
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

    public List<Product> listProductSale(){
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * FROM product WHERE `Status`=1 AND Promotional = 1")
                .mapToBean(Product.class).stream().collect(Collectors.toList()));
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
//        System.out.println(new ProductDAO().getTop9Product("cat"));
        // int amount, String category,String price, String size, String order_by
//        System.out.println(new ProductDAO().Test(9,"cat","20000000-200000000","0-2","3"));

<<<<<<< HEAD
//          System.out.println(new ProductDAO().getNext9Product(0,"all","10000000-150000000","2-5","2"));

=======
  //        System.out.println(new ProductDAO().getNext9Product(0,"1","10000000-150000000","2-5","2"));
        System.out.println(new ProductDAO().getFullProduct("all","10000000-150000000","2-5","2"));
>>>>>>> bc9e0c03f7b42222a1259b658fc411eeede17cc9
//          System.out.println(new ProductDAO().getNext9Product(0,"dog","10000000-150000000","2-5","2"));

//        System.out.println(new ProductDAO().test("dog"));
//         new ProductDAO().updateProduct("P1129","2201","name","img","123123","ádfsadfadf","ƯEDWffsdfF","2","sdfsdfsf","sdfsdfsff","4","1");
//        System.out.println(1000.2-(1000.2*10/100));
    }
}