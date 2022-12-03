package vn.edu.hcmuaf.fit.Admin.beans;

import java.io.Serializable;

public class AdminUser implements Serializable {
    private String id;
    private String username;
    private String passMaHoa;
    private String pass;
    private boolean status;
    private String name;
    private String email;
    private String phone;
    private String address;
    private String avt;

    public AdminUser() {
    }

    public AdminUser(String id, String username, String passMaHoa, String pass, boolean status, String name, String email, String phone, String address, String avt) {
        this.id = id;
        this.username = username;
        this.passMaHoa = passMaHoa;
        this.pass = pass;
        this.status = status;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.avt = avt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassMaHoa() {
        return passMaHoa;
    }

    public void setPassMaHoa(String passMaHoa) {
        this.passMaHoa = passMaHoa;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvt() {
        return avt;
    }

    public void setAvt(String avt) {
        this.avt = avt;
    }

    @Override
    public String toString() {
        return "AdminUser{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", passMaHoa='" + passMaHoa + '\'' +
                ", pass='" + pass + '\'' +
                ", status=" + status +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", avt='" + avt + '\'' +
                '}';
    }
}
