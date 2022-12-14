package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.Detail;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class DetailService {

        public static List<Detail> getData() {
            return JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery("SELECT * FROM product_category")
                        .mapToBean(Detail.class).stream().collect(Collectors.toList());
            });
        }


    public static void main(String[] args) {
        getData();
    }
}


