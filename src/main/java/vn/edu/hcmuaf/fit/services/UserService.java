package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.CustomerUserDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

public class UserService {
    private static UserService userService;
    public static UserService getInstance() {
        if (userService == null) {
            userService = new UserService();
        }
        return userService;
    }
    public CustomerUser getUserDetail(String Id){
        CustomerUserDAO dao = new CustomerUserDAO();
        return dao.getUserDetail(Id);
    }
}
