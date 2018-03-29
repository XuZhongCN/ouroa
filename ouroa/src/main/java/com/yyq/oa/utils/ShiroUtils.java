package com.yyq.oa.utils;

import com.yyq.oa.pojo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
 * Shiro工具类
 */
public class ShiroUtils {
    
    public static Session getSession() {
        return SecurityUtils.getSubject().getSession();
    }
    
    //A {@code Subject} represents state and security operations for a <em>single</em> application user.
    public static Subject getSubject() {
        return SecurityUtils.getSubject();
    }
    
    public static User getUser() {
        return (User) SecurityUtils.getSubject().getPrincipal();
    }
    
    public static String getUserId() {
        return getUser().getUserName();
    }
    
    public static void setSessionAttribute(Object key, Object value) {
        getSession().setAttribute(key, value);
    }
    
    public static Object getSessionAttribute(Object key) {
        return getSession().getAttribute(key);
    }
    
    public static boolean isLogin() {
        return SecurityUtils.getSubject().getPrincipal() != null;
    }
    
    public static void logout() {
        SecurityUtils.getSubject().logout();
    }
}
