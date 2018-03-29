package com.yyq.oa.utils;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;

public class PasswordUtil {
    
    public static String md5(String source, Object salt, int hashIterations) {
        SimpleHash simpleHash = new Md5Hash(source, salt, hashIterations);
        String md5 = simpleHash.toString();
        return md5;
    }
    
    public static String md5(String source, Object salt) {
        return md5(source, salt, 1024);
    }
    
    public static String md5(String source) {
        SimpleHash simpleHash = new Md5Hash(source);
        String md5 = simpleHash.toString();
        return md5;
    }
}
