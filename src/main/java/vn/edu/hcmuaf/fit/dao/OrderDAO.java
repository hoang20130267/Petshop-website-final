package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.beans.OrderDetail;
import vn.edu.hcmuaf.fit.beans.Orders;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.services.ProductService;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class OrderDAO {
    public String taoOrderID() {
        String numbers = "0123456789";
        StringBuilder stringBuilder = new StringBuilder("O");
        Random rd = new Random();

        for (int i = 0; i < 3; i++) {
            int index = rd.nextInt(numbers.length());
            char rdC = numbers.charAt(index);
            stringBuilder.append(rdC);
        }
        List<String> listId = JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT OrderID FROM orders")
                        .mapTo(String.class)
                        .stream()
                        .collect(Collectors.toList()));
        if (listId.contains(stringBuilder.toString())) return taoOrderID();
        else return stringBuilder.toString();
    }

    public void insertOrder(String CustomerID,String fullname, String phone, String address, String email, String notice, Cart cart){
        String id = taoOrderID();
        String date = java.time.LocalDate.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("INSERT INTO orders (OrderID, OrderDate,`Status`,Delivered,CustomerID,Notice,Price,RecipientName,Email,Phone,Address) VALUES(?,?,1,0,?,?,?,?,?,?,?)")
                    .bind(0,id)
                    .bind(1,date)
                    .bind(2,CustomerID)
                    .bind(3,notice)
                    .bind(4,cart.total())
                    .bind(5,fullname)
                    .bind(6,email)
                    .bind(7,phone)
                    .bind(8,address)
                    .execute();
            for (String idp: cart.getData().keySet()) {
                Product p = ProductDAO.getProductById(idp);
                handle.createUpdate("INSERT INTO orderdetail (OrderID,ProductID,ProductName,Price,Quantity) VALUES(?,?,?,?,?)")
                        .bind(0,id)
                        .bind(1,p.getProductId())
                        .bind(2,p.getProductName())
                        .bind(3,cart.getData().get(idp).getQuantityCart() * cart.getData().get(idp).getPrice())
                        .bind(4,cart.getData().get(idp).getQuantityCart())
                        .execute();
                handle.createUpdate("UPDATE product set Quantity=Quantity-? where productId = ?")
                        .bind(0,cart.getData().get(idp).getQuantityCart())
                        .bind(1,idp)
                        .execute();
            }
            return null;
        });
    }

    public List<Orders> ordersList (){
        List<Orders> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * FROM orders")
                .mapToBean(Orders.class).stream().collect(Collectors.toList()));
        return  list;
    }

    public List<OrderDetail> getOrderDetailsById (String id){
        List<OrderDetail> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT od.* FROM orderdetail od INNER JOIN orders o ON o.OrderID = od.OrderID\n" +
                "WHERE od.OrderID = ?"))
                .bind(0,id)
                .mapToBean(OrderDetail.class).stream().collect(Collectors.toList());
        return list;
    }

    public void updateDelivery(String orderId, int delivery){
        String date = java.time.LocalDate.now().toString();
        JDBIConnector.get().withHandle(handle -> handle.createUpdate("UPDATE orders SET Delivered=?, DeliveryDate=? WHERE OrderID=?;")
                        .bind(0,delivery)
                        .bind(1,date)
                        .bind(2,orderId)
                        .execute()
                );
    }
    public void updateStatus(String orderId, int status){
        JDBIConnector.get().withHandle(handle -> handle.createUpdate("UPDATE orders SET `Status`=? WHERE OrderID=?")
                .bind(0,status)
                .bind(1,orderId)
                .execute()
            );
    }
}
