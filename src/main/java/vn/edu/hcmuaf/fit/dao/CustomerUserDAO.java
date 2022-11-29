package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class CustomerUserDAO {
    private List<CustomerUser> users;

    public CustomerUserDAO(){
        users= JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from customer_user u inner join infor_user i on i.id_user = u.id_user")
                    .mapToBean(CustomerUser.class).stream().collect(Collectors.toList());
        });
        System.out.println(users);
    }

    public boolean isExits(String username) {
        for (CustomerUser user : this.users) {
            if (user.getUsername().equals(username))
                return true;
        }
        return false;
    }

    public CustomerUser checkLogin(String username, String password) {
        CustomerUser cust = null;
        for (CustomerUser user : this.users) {
            if (user.getUsername().equals(username) && user.getPass().equals(password)) {
                cust = user;
                return cust;
            }
        }
        return null;
    }

    public boolean checkStatus(String username) {
        for (CustomerUser user : this.users) {
            if (user.getUsername().equals(username)) {
                return user.isStatus();
            }
        }
        return false;
    }

    public static void main(String[] args) {
        new CustomerUserDAO();
    }
}
