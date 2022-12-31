package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Detail;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class DetailDAO {
    private List<Detail> listDetail;

    public DetailDAO() {
    }

    public List<Detail> listCategory() {
        List<Detail> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from product_category where ParentID != \"null\";")
                    .mapToBean(Detail.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public static List<Detail> listProCateClassify(String category) {
        String query = "SELECT DISTINCT pc.* FROM  product_category pc join product_from_cate pfc on pfc.cate_id = pc.CatId JOIN product p on p.productId = pfc.product_id Where p.`Status` =1";
        if (category != null)
        {
            switch (category) {
                case "all" -> query += " and pc.ParentID != \"null\"  ";
                case "dog" -> query += " and pc.ParentID = 1";
                case "cat" -> query += " and pc.ParentID = 2";
                case "accessory" -> query += " and pc.ParentID = 3";
            }
        }

        String finalquery = query;
        List<Detail> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(finalquery)
                    .mapToBean(Detail.class).stream().collect(Collectors.toList());
        });
        return list;
    }

    public static void main(String[] args) {
        new DetailDAO();
        System.out.println(new DetailDAO().listCategory());
    }
}
