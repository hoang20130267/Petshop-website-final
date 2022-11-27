package vn.edu.hcmuaf.fit.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.model.CustomerUser;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class JDBIConnector {
    private static Jdbi jdbi;

    private JDBIConnector() {
    }

    public static Jdbi get() {
        if (jdbi == null) makeConnect();
        return jdbi;
    }

    private static void makeConnect() {
        try {
            MysqlDataSource dataSource = new MysqlDataSource();
            dataSource.setURL("jdbc:mysql://" + DBProperties.getDbHost() + ":" + DBProperties.getDbPort() + "/" + DBProperties.getDbName());
            dataSource.setUser(DBProperties.getUsername());
            dataSource.setPassword(DBProperties.getPassword());
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
            jdbi = Jdbi.create(dataSource);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            throw new RuntimeException(throwables);
        }
    }


    public static void main(String[] args) {
        List<CustomerUser> users = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from customer_user u inner join infor_user i on i.id_user = u.id_user")
                    .mapToBean(CustomerUser.class).stream().collect(Collectors.toList());
        });
        System.out.println(users);
    }
}
