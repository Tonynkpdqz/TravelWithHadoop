package com.nkpdqz.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

public class MD5Utils {

    public static String md5(String password){
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("md5");
            byte[] digest = md.digest(password.getBytes("utf-8"));
            return Base64.getEncoder().encodeToString(digest);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return password;
    }
}
