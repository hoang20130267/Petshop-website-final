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

    public CustomerUser getUserByEmail(String email) {
        CustomerUserDAO dao = new CustomerUserDAO();
        return dao.getUserByEmail(email);
    }

    public String getIdUserByName(String username) {
        CustomerUserDAO dao = new CustomerUserDAO();
    return dao.getIdUserByName(username);
    }

    public void updateInforUser(String id, String fullname,String phone, String address, String newpass, String avt) {
        new CustomerUserDAO().updateInforUser(id,fullname,phone, address,newpass,avt);
    }

    public void UpdateUserInfo(String id, String name, String email, Object o, Object o1, Object o2) {

    }
}
