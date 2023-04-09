package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.dao.ContactDAO;

public class ContactService {
    private static ContactService contactService;

    public static ContactService getInstance() {
        if (contactService == null) {
            contactService = new ContactService();
        }
        return contactService;
    }
    public void insertContact(String name, String email, String content){
        new ContactDAO().insertContact(name,email,content);
    }
}
