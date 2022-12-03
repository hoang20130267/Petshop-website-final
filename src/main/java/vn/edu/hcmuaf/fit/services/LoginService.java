package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.dao.CustomerUserDAO;

public class LoginService {
    private static LoginService loadUser;
    private String status;

    public static LoginService getInstance() {

        if (loadUser == null) {
            loadUser = new LoginService();
        }
        return loadUser;

    }

    public CustomerUser getAccountCustomer(String username, String password) {
        CustomerUserDAO DAO = new CustomerUserDAO();

        if (!DAO.isExits(username)) {
            status = "Tài khoản không tồn tại";
            return null;
        }
        if (!DAO.checkStatus(username)) {
            status = "Tài khoản bị vô hiệu hoá";
            return null;
        }
        CustomerUser account = DAO.checkLogin(username, password);
        if (account == null) {
            status = "Sai tên đăng nhập hoặc mật khẩu";
            return null;
        }
        return account;
    }

    public String getStatus() {
        return status;
    }
}
