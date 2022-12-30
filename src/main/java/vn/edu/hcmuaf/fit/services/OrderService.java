package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.Cart;
import vn.edu.hcmuaf.fit.dao.OrderDAO;

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
}
