package com.yyq.oa.controller;

import com.yyq.oa.pojo.BaseJson;
import com.yyq.oa.pojo.User;
import com.yyq.oa.service.UserService;
import com.yyq.oa.utils.GlobalFinallVar;
import com.yyq.oa.utils.JsonUtils;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.utils.PasswordUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.validation.Valid;

/**
 * Created by QJY on 2017/12/9.
 */
@Controller
public class UserLoginController {
    
    @RequestMapping(value = "/login", produces = {"text/plain;charset=utf-8"}, method = RequestMethod.POST)
    @ResponseBody
    public /*ModelAndView*/ String login(/*ModelAndView mav, @Valid */@RequestBody User user/*, BindingResult result*//*String userName, String passWord*/) {
        //mav.setViewName("demo");
        //BaseJson baseJson = null;
        String userName = user.getUserName();
        String passWord = user.getPassword();
        Lg.log("userName", userName);
        Lg.log("passWord", passWord);
        //mav.addObject("user", user);
        //Lg.log("result", result);
        try {
            passWord = PasswordUtil.md5(passWord, userName);
            //passWord = PasswordUtil.md5(passWord/*, userName*/);
            Lg.log("passWord---", passWord);
            UsernamePasswordToken token = new UsernamePasswordToken(userName, passWord);
            SecurityUtils.getSubject().login(token);
        } catch (UnknownAccountException e) {// 用户不存在
            Lg.log("UnknownAccountException", e.getMessage());
            e.printStackTrace();
            return JsonUtils.objectToJson(BaseJson.setError(0, e.getLocalizedMessage()));
            //mav.addObject("MSG", e.getMessage());
            //return mav;
        } catch (IncorrectCredentialsException e) {// 用户不存在
            Lg.log("IncorrectCredentialsException", e.getMessage());
            e.printStackTrace();
            return JsonUtils.objectToJson(BaseJson.setError(0, e.getLocalizedMessage()));
            //mav.addObject("MSG", e.getMessage());
            //return mav;
        } catch (LockedAccountException e) {// 用户不存在
            Lg.log("LockedAccountException", e.getMessage());
            e.printStackTrace();
            return JsonUtils.objectToJson(BaseJson.setError(0, e.getLocalizedMessage()));
            //mav.addObject("MSG", e.getMessage());
            //return mav;
        } catch (AuthenticationException e) {// 省略
            Lg.log("AuthenticationException", e.getMessage());
            e.printStackTrace();
            return JsonUtils.objectToJson(BaseJson.setError(0, e.getLocalizedMessage()));
            //mav.addObject("MSG", e.getMessage());
            //return mav;
        }
//        mav.addObject("MSG", "登录成功");
//        return mav;
        return JsonUtils.objectToJson(BaseJson.setOK("登录成功"));
    }
    
    @RequestMapping("/logout")
    public String logout() {
        Lg.log("logout");
        SecurityUtils.getSubject().logout();
        return null/*"login"*/;
    }
}
