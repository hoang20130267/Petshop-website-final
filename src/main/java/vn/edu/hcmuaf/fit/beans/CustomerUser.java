package vn.edu.hcmuaf.fit.beans;

import java.io.Serializable;

public class CustomerUser implements Serializable {
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
    private boolean role;


    public CustomerUser() {
    }

    public CustomerUser(String id, String username, String passMaHoa, String password, boolean status, String fullName, String email, String phone, String address, String avt, boolean role) {
        this.id = id;
        this.username = username;
        this.passMaHoa = passMaHoa;
        this.pass = password;
        this.status = status;
        this.name = fullName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.avt = avt;
        this.role = role;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
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

    public String getPassMaHoa() {
        return passMaHoa;
    }

    public void setPassMaHoa(String passMaHoa) {
        this.passMaHoa = passMaHoa;
    }

    @Override
    public String toString() {
        return "CustomerUser{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + pass + '\'' +
                ", status=" + status +
                ", fullName='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", avt='" + avt + '\'' +
                '}';
    }
}