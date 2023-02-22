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
            return handle.createQuery("select p.* from product p INNER JOIN product_from_cate pfc on p.productId = pfc.product_id where (pfc.cate_id = 1 or pfc.cate_id =2) and \n" +
                            "p.ProductName like ?").bind(0, "%" + txtSearch + "%")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public List<Product> searchByName2(String txtSearch) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select p.* from product p INNER JOIN product_from_cate pfc on p.productId = pfc.product_id where pfc.cate_id = 3 and \n" +
                            "p.ProductName like ?")
                    .bind(0, "%" + txtSearch + "%")
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public static Product getProductById(String id) {
        Product p = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product where productId = ?")
                    .bind(0, id).mapToBean(Product.class).first();
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
                    .bind(2, "http://localhost:8080/Petshop_website_final_war/img/products/"+image)
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
                    .bind(13,Double.parseDouble(PromotionalPrice))
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

    public static void insertAccessory(String idAdmin,String name, String image, String price, String description,
                                       String detail,String quantity, String mausac,
                                       String cannang, String cateParent, String cateChild, String status, String promotional,
                                       String PromotionalPrice) {
        String id = taoIDProduct();
        String date = java.time.LocalDate.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("insert into product (productId, ProductName, Image, Price, Description, " +
                            "Dital, Quantity, CreateBy, CreateDate, mausac, cannang, `Status`, PromotionalPrice,Promotional) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)")
                    .bind(0, id)
                    .bind(1, name)
                    .bind(2, "http://localhost:8080/Petshop_website_final_war/img/products/"+image)
                    .bind(3, price)
                    .bind(4, description)
                    .bind(5, detail)
                    .bind(6, quantity)
                    .bind(7, idAdmin)
                    .bind(8, date)
                    .bind(9,mausac)
                    .bind(10,cannang)
                    .bind(11,Integer.parseInt(status))
                    .bind(12,Double.parseDouble(PromotionalPrice))
                    .bind(13,Integer.parseInt(promotional))
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

    public static void updateProduct(String id, String idAdmin,String name, String image, String price, String description,
                                     String detail,String quantity, String giong, String mausac,
                                     String cannang,String status, String Promotional, String PromotionalPrice) {
        String date = java.time.LocalDate.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE product SET ProductName=?,`Status`=?,Image=?,Price=?,Quantity=?,Description=?,Dital=?,UpdateBy=?,UpdateDate=?,giong=?,mausac=?,cannang=?,PromotionalPrice=?, Promotional=?\n" +
                            "WHERE productId=?;\n")
                    .bind(0, name)
                    .bind(1, Integer.parseInt(status))
                    .bind(2, "http://localhost:8080/Petshop_website_final_war/img/products/"+image)
                    .bind(3, price)
                    .bind(4, quantity)
                    .bind(5, description)
                    .bind(6, detail)
                    .bind(7, idAdmin)
                    .bind(8, date)
                    .bind(9, giong)
                    .bind(10,mausac)
                    .bind(11,cannang)
                    .bind(12,Double.parseDouble(PromotionalPrice))
                    .bind(13,Integer.parseInt(Promotional))
                    .bind(14,id)
                    .execute();
        });
    }
    public static void updateAccessory(String id, String idAdmin,String name, String image, String price, String description,
                                       String detail,String quantity, String mausac,
                                       String cannang,String status, String Promotional, String PromotionalPrice) {
        String date = java.time.LocalDate.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE product SET ProductName=?,`Status`=?,Image=?,Price=?,Quantity=?,Description=?,Dital=?,UpdateBy=?,UpdateDate=?,mausac=?,cannang=?,PromotionalPrice=?, Promotional=?\n" +
                            "WHERE productId=?;\n")
                    .bind(0, name)
                    .bind(1, Integer.parseInt(status))
                    .bind(2, "http://localhost:8080/Petshop_website_final_war/img/products/"+image)
                    .bind(3, price)
                    .bind(4, quantity)
                    .bind(5, description)
                    .bind(6, detail)
                    .bind(7, idAdmin)
                    .bind(8, date)
                    .bind(9, mausac)
                    .bind(10,cannang)
                    .bind(11,Double.parseDouble(PromotionalPrice))
                    .bind(12,Integer.parseInt(Promotional))
                    .bind(13,id)
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

    public List<Product> listRelateTo(String id) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("\tSELECT p.productId,p.ProductName,p.Price, p.Image\n" +
                        "\tfrom product p join product_from_cate pfc on p.productId = pfc.product_id\n" +
                        "\tWHERE pfc.cate_id in (SELECT pfc1.cate_id\n" +
                        "\tFROM product p1 join product_from_cate pfc1 on p1.productId = pfc1.product_id \n" +
                        "\tWHERE p1.productId = ?\n" +
                        "\t) AND p.productId != ? and `Status` =1\n" +
                        "ORDER BY pfc.cate_id DESC\n" +
                        "LIMIT 4;").bind(0,id).bind(1,id)
                .mapToBean(Product.class).stream().collect(Collectors.toList()));
    }

}