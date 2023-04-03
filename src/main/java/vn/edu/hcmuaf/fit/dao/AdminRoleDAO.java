package vn.edu.hcmuaf.fit.dao;

import ch.qos.logback.core.net.SyslogOutputStream;
import vn.edu.hcmuaf.fit.beans.AdminRole;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;

public class AdminRoleDAO {
    private String idUser;

    public AdminRoleDAO(String id) {
        this.idUser = id;
    }

    public List<AdminRole> getListRole() {
        List<AdminRole> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select tableName, permission  from adminpermission where idUser = ?")
                    .bind(0, idUser)
                    .map((rs, ctx) -> new AdminRole(rs.getString("tableName"), rs.getInt("permission")))
                    .list();
        });
        return list;
    }

    public static void main(String[] args) {
        System.out.println(new AdminRoleDAO("2201").getListRole());
    }
}
