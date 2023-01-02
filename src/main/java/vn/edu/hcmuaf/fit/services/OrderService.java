package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.beans.OrderDetail;
import vn.edu.hcmuaf.fit.beans.Orders;
import vn.edu.hcmuaf.fit.dao.OrderDAO;

import java.util.List;

public class OrderService {
    private static OrderService orderService;
    public static OrderService getInstance() {
        if (orderService == null) {
            orderService = new OrderService();
        }
        return orderService;
    }
    public void insertOrder(String CustomerID,String fullname, String phone, String address, String email, String notice, Cart cart){
       new OrderDAO().insertOrder(CustomerID,fullname,phone,address,email,notice,cart);
    }

    public List<Orders> ordersList(){
        return new OrderDAO().ordersList();
    }

    public List<OrderDetail> getOrderDetailsById (String id){
        return new OrderDAO().getOrderDetailsById(id);
    }

    public void updateDelivery(String orderId, int delivery){
        new OrderDAO().updateDelivery(orderId,delivery);
    }
    public void updateStatus(String orderId, int status){
        new OrderDAO().updateStatus(orderId,status);
    }

    public List<Orders> getOrdersByUser(String id){
        return new OrderDAO().getOrdersByUser(id);
    }
}
