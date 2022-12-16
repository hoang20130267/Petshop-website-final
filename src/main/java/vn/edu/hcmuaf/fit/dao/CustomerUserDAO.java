package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.services.Utils;

import java.util.List;
import java.util.stream.Collectors;

public class CustomerUserDAO {
    private List<CustomerUser> users;

    public CustomerUserDAO(){
        users= JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from user_account u inner join infor_user i on i.id_user = u.id")
                    .mapToBean(CustomerUser.class).stream().collect(Collectors.toList());
        });
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
            if (user.getUsername().equals(username) && Utils.checkPass(user.getPassMaHoa(), Utils.maHoaMK(password))) {
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

    public String checkEmailExits(String email) {
        List<String> id_account = JDBIConnector.get().withHandle(handle -> handle.createQuery("select us.id from user_account us INNER JOIN infor_user iu ON iu.id_user = us.id where us.role = 0 and iu.email =?")
                .bind(0, email)
                .mapTo(String.class)
                .stream()
                .collect(Collectors.toList()));
        if (id_account.isEmpty())
            return "";
        return id_account.get(0);
    }

    public void updatePasswordFromEmail(String newPass, String email) {
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("update user_account set pass = ?,passMaHoa=? where id =?")
                    .bind(0, newPass)
                    .bind(1,Utils.maHoaMK(newPass))
                    .bind(2, checkEmailExits(email))
                    .execute();
            return null;
        });
    }

    public String checkUser(String username){
        String result=null;
        String user=null;
        try {
            user = JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT user_name FROM user_account WHERE user_name = ?")
                    .bind(0,username).mapTo(String.class).first());
        }catch (Exception e){
        }
        if (user != null) {
            result = "Username đã tồn tại!";
        }
        return result;
    }

    public void updateInforUser(String id, String fullname,String phone, String address, String newpass){
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("update user_account set pass = ? ,passMaHoa=? where id =?")
                    .bind(0,newpass)
                    .bind(1,Utils.maHoaMK(newpass))
                    .bind(2, id)
                    .execute();
            handle.createUpdate("update infor_user set name=? ,phone=? , address=? where id_user =?")
                    .bind(0,fullname)
                    .bind(1,phone)
                    .bind(2,address)
                    .bind(3,id)
                    .execute();
            return null;
        });
    }
    public static void main(String[] args) {
        System.out.println(new CustomerUserDAO().checkEmailExits("huynguyen.79039@gmail.com"));
    }
}
