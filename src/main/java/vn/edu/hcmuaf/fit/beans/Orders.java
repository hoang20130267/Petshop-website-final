package vn.edu.hcmuaf.fit.beans;

import java.io.Serializable;

public class Orders implements Serializable {
    private String OrderID;
    private String OrderDate;
    private int Status;
    private int Delivered;
    private String DeliveryDate;
    private String CustomerID;
    private double Discount;
    private String Notice;

    public Orders() {
    }

    public Orders(String orderID, String orderDate, int status, int delivered, String deliveryDate, String customerID, double discount, String notice) {
        OrderID = orderID;
        OrderDate = orderDate;
        Status = status;
        Delivered = delivered;
        DeliveryDate = deliveryDate;
        CustomerID = customerID;
        Discount = discount;
        Notice = notice;
    }

    public String getOrderID() {
        return OrderID;
    }

    public void setOrderID(String orderID) {
        OrderID = orderID;
    }

    public String getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(String orderDate) {
        OrderDate = orderDate;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int status) {
        Status = status;
    }

    public int getDelivered() {
        return Delivered;
    }

    public void setDelivered(int delivered) {
        Delivered = delivered;
    }

    public String getDeliveryDate() {
        return DeliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        DeliveryDate = deliveryDate;
    }

    public String getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(String customerID) {
        CustomerID = customerID;
    }

    public double getDiscount() {
        return Discount;
    }

    public void setDiscount(double discount) {
        Discount = discount;
    }

    public String getNotice() {
        return Notice;
    }

    public void setNotice(String notice) {
        Notice = notice;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "OrderID='" + OrderID + '\'' +
                ", OrderDate='" + OrderDate + '\'' +
                ", Status=" + Status +
                ", Delivered=" + Delivered +
                ", DeliveryDate='" + DeliveryDate + '\'' +
                ", CustomerID='" + CustomerID + '\'' +
                ", Discount=" + Discount +
                ", Notice='" + Notice + '\'' +
                '}';
    }
}
