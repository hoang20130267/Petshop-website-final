package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.JDBIConnector;

public class LogDAO {
    public static void createUserLog(String idUser, String level, String message) {
        String date = java.time.LocalDateTime.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("insert into LOGS (USER_ID, LEVELS, DATED, MESSAGE) values(?,?,?,?)")
                    .bind(0, idUser)
                    .bind(1, level)
                    .bind(2, date)
                    .bind(3, message)
                    .execute();
            return true;
        });
    }
    public static void createAdminLog(String idUser, String level, String message) {
        String date = java.time.LocalDateTime.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("insert into logs (USER_ID, LEVELS, DATED, MESSAGE) values(?,?,?,?)")
                    .bind(0, idUser)
                    .bind(1, level)
                    .bind(3, date)
                    .bind(4, message)
                    .execute();
            return true;
        });
    }
}
