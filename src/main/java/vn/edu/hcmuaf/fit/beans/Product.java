package vn.edu.hcmuaf.fit.beans;

import java.io.Serializable;

public class Product implements Serializable {
    private int productId;
    private String productName;
    private boolean status;
    private String image;
    private String price;
    private double promotionalPrice;
    private int quantity;
    private int warranty;
    private boolean newProduct;
    private String description;
    private String dital;
    private String createBy;
    private String createDate;
    private String updateBy;
    private String updateDate;
    private String giong;
    private String mausac;
    private String cannang;

    public Product() {
    }

    public Product(int productId, String productName, boolean status, String image, String price, double promotionalPrice, int quantity, int warranty, boolean newProduct, String description, String dital, String createBy, String createDate, String updateBy, String updateDate, String giong, String mausac, String cannang) {
        this.productId = productId;
        this.productName = productName;
        this.status = status;
        this.image = image;
        this.price = price;
        this.promotionalPrice = promotionalPrice;
        this.quantity = quantity;
        this.warranty = warranty;
        this.newProduct = newProduct;
        this.description = description;
        this.dital = dital;
        this.createBy = createBy;
        this.createDate = createDate;
        this.updateBy = updateBy;
        this.updateDate = updateDate;
        this.giong = giong;
        this.mausac = mausac;
        this.cannang = cannang;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public double getPromotionalPrice() {
        return promotionalPrice;
    }

    public void setPromotionalPrice(double promotionalPrice) {
        this.promotionalPrice = promotionalPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getWarranty() {
        return warranty;
    }

    public void setWarranty(int warranty) {
        this.warranty = warranty;
    }

    public boolean isNewProduct() {
        return newProduct;
    }

    public void setNewProduct(boolean newProduct) {
        this.newProduct = newProduct;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDital() {
        return dital;
    }

    public void setDital(String dital) {
        this.dital = dital;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public String getGiong() {
        return giong;
    }

    public void setGiong(String giong) {
        this.giong = giong;
    }

    public String getMausac() {
        return mausac;
    }

    public void setMausac(String mausac) {
        this.mausac = mausac;
    }

    public String getCannang() {
        return cannang;
    }

    public void setCannang(String cannang) {
        this.cannang = cannang;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", status=" + status +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", promotionalPrice=" + promotionalPrice +
                ", quantity=" + quantity +
                ", warranty=" + warranty +
                ", newProduct=" + newProduct +
                ", description='" + description + '\'' +
                ", dital='" + dital + '\'' +
                ", createBy='" + createBy + '\'' +
                ", createDate='" + createDate + '\'' +
                ", updateBy='" + updateBy + '\'' +
                ", updateDate='" + updateDate + '\'' +
                ", giong='" + giong + '\'' +
                ", mausac='" + mausac + '\'' +
                ", cannang='" + cannang + '\'' +
                '}';
    }
}
