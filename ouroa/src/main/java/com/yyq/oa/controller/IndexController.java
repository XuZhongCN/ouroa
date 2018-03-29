package com.yyq.oa.controller;

import com.yyq.oa.pojo.User;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.utils.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by QJY on 2017/12/9.
 */
@Controller
public class IndexController {
    
    //    @RequiresPermissions({"sys:role:list"})
//    @RequestMapping("/")
//    public String index0() { 
//        // TODO return modelandview return user 对象,返回消息书,未读
//        User user = ShiroUtils.getUser();
//        Lg.log("user in shiro", user);
//        return "index";
//    }
    
    @RequestMapping("/index")
    public String index() {
        
        User user = ShiroUtils.getUser();
        Lg.log("user in shiro", user);
        return "index";
    }
    
    @RequestMapping("/home")
    public String home() {
        return "home";
    }
    
    @RequestMapping("/unauthorized")
    public String unauthorized() {
        return "unauthorized";
    }
}
