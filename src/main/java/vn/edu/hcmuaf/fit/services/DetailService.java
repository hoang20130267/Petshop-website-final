package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.Detail;
import vn.edu.hcmuaf.fit.dao.DetailDAO;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class DetailService {
    private static DetailService detailService;

    public static DetailService getInstance() {
        if (detailService == null) {
            detailService = new DetailService();
        }
        return detailService;
    }
        public static List<Detail> getData() {
            return JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery("SELECT * FROM product_category")
                        .mapToBean(Detail.class).stream().collect(Collectors.toList());
            });
        }
    public List<Detail> listCategoryProduct(){
        return new DetailDAO().listCategoryProduct();
    }

    public List<Detail> listCategoryBlog(){
        return new DetailDAO().listCategoryBlog();
    }

    public Detail getCateProductById(String id){
        return new DetailDAO().getCateProductById(id);
    }
    public Detail getCateBlogById(String id){
        return new DetailDAO().getCateBlogById(id);
    }
    public static void main(String[] args) {
        getData();
    }
}


