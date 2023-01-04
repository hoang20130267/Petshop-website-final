package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.beans.CustomerUser;
import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.beans.SignUp;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.services.Utils;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class CustomerUserDAO {
    private List<CustomerUser> users;

    public CustomerUserDAO(){
        users= JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from user_account u inner join infor_user i on i.id_user = u.id")
                    .mapToBean(CustomerUser.class).stream().collect(Collectors.toList());
        });
    }

    public String taoIDCustomerAdminUser() {
        String numbers = "0123456789";
        StringBuilder stringBuilder = new StringBuilder("Ad");
        Random rd = new Random();

        for (int i = 0; i < 3; i++) {
            int index = rd.nextInt(numbers.length());
            char rdC = numbers.charAt(index);
            stringBuilder.append(rdC);
        }
        List<String> listId = JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT id FROM user_account")
                        .mapTo(String.class)
                        .stream()
                        .collect(Collectors.toList()));
        if (listId.contains(stringBuilder.toString())) return taoIDCustomerAdminUser();
        else return stringBuilder.toString();
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
    public void updateInforUser(String id, String fullname,String phone, String address, String newpass, String avt){
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("update user_account set pass = ? ,passMaHoa=? where id =?")
                    .bind(0,newpass)
                    .bind(1,Utils.maHoaMK(newpass))
                    .bind(2, id)
                    .execute();
            handle.createUpdate("update infor_user set name=?, phone=? , address=?, avt=? where id_user =?")
                    .bind(0,fullname)
                    .bind(1,phone)
                    .bind(2,address)
                    .bind(3,"img/user/"+avt)
                    .bind(4,id)
                    .execute();
            return null;
        });
    }

    public List<CustomerUser> listUser() {
        String query = "SELECT u.user_name, u.id,ifu.email, SUM(od.Price) as Price, SUM(od.Quantity) AS Quantity \n" +
                "FROM user_account u join infor_user ifu on u.id = ifu.id_user \n" +
                "join orders o on o.CustomerID = ifu.id_user\n" +
                "join orderdetail od on o.OrderID = od.OrderID\n" +
                "GROUP BY u.user_name, u.id;\n";
        String FinalQuery = query;
        List<CustomerUser> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(FinalQuery)
                .mapToBean(CustomerUser.class)
                .stream()
                .collect(Collectors.toList()));
        return list;
    }

    public List<CustomerUser> ListAdmin() {
        return JDBIConnector.get().withHandle((handle -> handle.createQuery("SELECT *\n" +
                "FROM user_account u join infor_user ifu\n" +
                "on u.id=ifu.id_user\n" +
                "WHERE u.role=1;").mapToBean(CustomerUser.class).stream().collect(Collectors.toList())));
    }

    public void insertAdmin(String userName, String pass, String fullName, String email, String phone,String address,int status) {
        String id = taoIDCustomerAdminUser();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("INSERT INTO user_account(id, user_name, passMaHoa, pass, status,role) VALUES (?, ?, ?,?, ?, 1)")
                    .bind(0, id)
                    .bind(1, userName)
                    .bind(2, Utils.maHoaMK(pass))
                    .bind(3, pass)
                    .bind(4, status)
                    .execute();
            handle.createUpdate("INSERT INTO infor_user(id_user,name, email, phone, address) VALUES (?, ?, ?,?,?)")
                    .bind(0, id)
                    .bind(1, fullName)
                    .bind(2, email)
                    .bind(3, phone)
                    .bind(4,address)
                    .execute();
            return null;
        });
    }
    public void updateAdmin(String id, String userName, String pass, String fullName, String email, String phone,String address,int status) {
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("update user_account set user_name = ?, passMaHoa = ?, pass = ?, status = ? where id = ?")
                    .bind(0, userName)
                    .bind(1, Utils.maHoaMK(pass))
                    .bind(2, pass)
                    .bind(3, status)
                    .bind(4, id)
                    .execute();
            handle.createUpdate("update infor_user set name = ?, email = ?, phone = ?, address = ? where id_user = ?")
                    .bind(0, fullName)
                    .bind(1, email)
                    .bind(2, phone)
                    .bind(3, address)
                    .bind(4, id)
                    .execute();
            return null;
        });
    }

    public void insertCustomer(String userName, String pass, String fullName, String email, String phone,String address,int status) {
        String id = new SignUpDAO().taoIDCustomerUser();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("INSERT INTO user_account(id, user_name, passMaHoa, pass, status,role) VALUES (?, ?, ?,?, ?, 0)")
                    .bind(0, id)
                    .bind(1, userName)
                    .bind(2, Utils.maHoaMK(pass))
                    .bind(3, pass)
                    .bind(4, status)
                    .execute();
            handle.createUpdate("INSERT INTO infor_user(id_user,name, email, phone, address) VALUES (?, ?, ?,?,?)")
                    .bind(0, id)
                    .bind(1, fullName)
                    .bind(2, email)
                    .bind(3, phone)
                    .bind(4,address)
                    .execute();
            return null;
        });
    }
    public void updateCustomer(String id, String userName, String pass, String fullName, String email, String phone,String address,int status) {
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("update user_account set user_name = ?, passMaHoa = ?, pass = ?, status = ? where id = ?")
                    .bind(0, userName)
                    .bind(1, Utils.maHoaMK(pass))
                    .bind(2, pass)
                    .bind(3, status)
                    .bind(4, id)
                    .execute();
            handle.createUpdate("update infor_user set name = ?, email = ?, phone = ?, address = ? where id_user = ?")
                    .bind(0, fullName)
                    .bind(1, email)
                    .bind(2, phone)
                    .bind(3, address)
                    .bind(4, id)
                    .execute();
            return null;
        });
    }
    public CustomerUser getUserDetail(String id) {
        CustomerUser detail = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from infor_user iu inner join user_account uc on iu.id_user = uc.id where id_user = ?")
                    .bind(0, id)
                    .mapToBean(CustomerUser.class).first();
        });
        return detail;
    }
    public static void deleteUser(String id) {
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("delete from user_account where id = ?")
                    .bind(0, id)
                    .execute();
            handle.createUpdate("delete from infor_user where id_user = ?")
                    .bind(0, id)
                    .execute();
            return true;
        });
    }
    public static void main(String[] args) {
//        System.out.println(new CustomerUserDAO().checkEmailExits("huynguyen.79039@gmail.com"));
//        System.out.println(new CustomerUserDAO().listUser());
//        System.out.println(new CustomerUserDAO().ListAdmin());
//        System.out.println(new CustomerUserDAO().getUserDetail("2201"));
//        new CustomerUserDAO().insertAdmin("chó ngu", "123", "Ngoc Huy", "easfasf", "ầd", "áaf", 1);
    }
}
