package vn.edu.hcmuaf.fit.services;

import org.apache.commons.codec.digest.DigestUtils;

public class Utils {
    public static String maHoaMK(String input){
        return DigestUtils.md5Hex(input);
    }

    public static boolean checkPass(String input, String pass){
        return input.equals(pass);
    }

    public static void main(String[] args) {
        String s = "NguyenNgocHuy123";
        System.out.println(maHoaMK("huyhuyhuy"));
        System.out.println(maHoaMK("hoangsisi"));
        System.out.println(maHoaMK("hoanghuyhuy"));
        System.out.println(checkPass(s,"21acf0d7315b8c0b80629f92d9d62f7"));
    }
}
