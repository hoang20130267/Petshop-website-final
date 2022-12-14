package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.Detail;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

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

    public static void main(String[] args) {
        new DetailDAO();
        System.out.println(new DetailDAO().listCategory());
    }


}
