package vn.edu.hcmuaf.fit.beans;

import java.io.Serializable;
import java.util.Objects;

public class Product implements Serializable {
    private String productId;
    private String productName;
    private int status;
    private String image;
    private int price;
    private int promotionalPrice;
    private String quantity;
    private int warranty;
    private int Promotional;
    private String description;
    private String dital;
    private String createBy;
    private String createDate;
    private String updateBy;
    private String updateDate;
    private String giong;
    private String mausac;
    private String cannang;

    private ProductSale sales;

    private int quantityCart;
    private int quantityWishlist;

    private String cate_id;


    public Product() {
    }

    public Product(String productId, String productName, int status, String image, int price, int promotionalPrice, String quantity, int warranty, int Promotional, String description, String dital, String createBy, String createDate, String updateBy, String updateDate, String giong, String mausac, String cannang, ProductSale sales, int quantityCart,int quantityWishlist, String cate_id) {
        this.productId = productId;
        this.productName = productName;
        this.status = status;
        this.image = image;
        this.price = price;
        this.promotionalPrice = promotionalPrice;
        this.quantity = quantity;
        this.warranty = warranty;
        this.Promotional = Promotional;
        this.description = description;
        this.dital = dital;
        this.createBy = createBy;
        this.createDate = createDate;
        this.updateBy = updateBy;
        this.updateDate = updateDate;
        this.giong = giong;
        this.mausac = mausac;
        this.cannang = cannang;
        this.sales = sales;
        this.quantityCart = quantityCart;
        this.quantityWishlist = quantityWishlist;
        this.cate_id = cate_id;
    }

    public void setPromotional(int promotional) {
        Promotional = promotional;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getPromotionalPrice() {
        return promotionalPrice;
    }

    public void setPromotionalPrice(int promotionalPrice) {
        this.promotionalPrice = promotionalPrice;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public int getWarranty() {
        return warranty;
    }

    public void setWarranty(int warranty) {
        this.warranty = warranty;
    }

    public int getPromotional() {
        return Promotional;
    }

    public void setNewProduct(int Promotional) {
        this.Promotional = Promotional;
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

    public ProductSale getSales() {
        return sales;
    }

    public void setSales(ProductSale sales) {
        this.sales = sales;
    }

    public int getQuantityCart() {
        return quantityCart;
    }

    public int getQuantityWishlist() {
        return quantityWishlist;
    }

    public String getCate_id() {
        return cate_id;
    }

    public void setCate_id(String cate_id) {
        this.cate_id = cate_id;
    }

    public void setQuantityCart(int quantityCart) {
        this.quantityCart = quantityCart;
    }

    public void setQuantityWishlist(int quantityWishlist) {
        this.quantityWishlist = quantityWishlist;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId='" + productId + '\'' +
                ", productName='" + productName + '\'' +
                ", status=" + status +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", promotionalPrice='" + promotionalPrice + '\'' +
                ", quantity='" + quantity + '\'' +
                ", warranty=" + warranty +
                ", newProduct=" + Promotional +
                ", description='" + description + '\'' +
                ", dital='" + dital + '\'' +
                ", createBy='" + createBy + '\'' +
                ", createDate='" + createDate + '\'' +
                ", updateBy='" + updateBy + '\'' +
                ", updateDate='" + updateDate + '\'' +
                ", giong='" + giong + '\'' +
                ", mausac='" + mausac + '\'' +
                ", cannang='" + cannang + '\'' +
                ", sales=" + sales +
                ", quantityCart=" + quantityCart +
                ", quantityWishlist=" + quantityWishlist +
                ", cate_id='" + cate_id + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Product product)) return false;

        if (status != product.status) return false;
        if (price != product.price) return false;
        if (promotionalPrice != product.promotionalPrice) return false;
        if (warranty != product.warranty) return false;
        if (Promotional != product.Promotional) return false;
        if (quantityCart != product.quantityCart) return false;
        if (quantityWishlist != product.quantityWishlist) return false;
        if (!Objects.equals(productId, product.productId)) return false;
        if (!Objects.equals(productName, product.productName)) return false;
        if (!Objects.equals(image, product.image)) return false;
        if (!Objects.equals(quantity, product.quantity)) return false;
        if (!Objects.equals(description, product.description)) return false;
        if (!Objects.equals(dital, product.dital)) return false;
        if (!Objects.equals(createBy, product.createBy)) return false;
        if (!Objects.equals(createDate, product.createDate)) return false;
        if (!Objects.equals(updateBy, product.updateBy)) return false;
        if (!Objects.equals(updateDate, product.updateDate)) return false;
        if (!Objects.equals(giong, product.giong)) return false;
        if (!Objects.equals(mausac, product.mausac)) return false;
        if (!Objects.equals(cannang, product.cannang)) return false;
        if (!Objects.equals(sales, product.sales)) return false;
        return Objects.equals(cate_id, product.cate_id);
    }

    @Override
    public int hashCode() {
        int result = productId != null ? productId.hashCode() : 0;
        result = 31 * result + (productName != null ? productName.hashCode() : 0);
        result = 31 * result + status;
        result = 31 * result + (image != null ? image.hashCode() : 0);
        result = 31 * result + price;
        result = 31 * result + promotionalPrice;
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        result = 31 * result + warranty;
        result = 31 * result + Promotional;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (dital != null ? dital.hashCode() : 0);
        result = 31 * result + (createBy != null ? createBy.hashCode() : 0);
        result = 31 * result + (createDate != null ? createDate.hashCode() : 0);
        result = 31 * result + (updateBy != null ? updateBy.hashCode() : 0);
        result = 31 * result + (updateDate != null ? updateDate.hashCode() : 0);
        result = 31 * result + (giong != null ? giong.hashCode() : 0);
        result = 31 * result + (mausac != null ? mausac.hashCode() : 0);
        result = 31 * result + (cannang != null ? cannang.hashCode() : 0);
        result = 31 * result + (sales != null ? sales.hashCode() : 0);
        result = 31 * result + quantityCart;
        result = 31 * result + quantityWishlist;
        result = 31 * result + (cate_id != null ? cate_id.hashCode() : 0);
        return result;
    }
}
