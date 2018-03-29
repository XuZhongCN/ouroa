package com.yyq.oa.controller;

import com.yyq.oa.pojo.BaseJson;
import com.yyq.oa.pojo.PageBean;
import com.yyq.oa.pojo.Role;
import com.yyq.oa.pojo.User;
import com.yyq.oa.service.RoleService;
import com.yyq.oa.utils.*;
import com.yyq.oa.service.UserService;
import com.yyq.oa.vo.BootstrapTableResult;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
//@RequestMapping("")
public class UserController {
    
    @Resource
    private UserService userService;
    @Resource
    private RoleService roleService;
    
    @RequestMapping("/user/{page}")
    public String listPage(@PathVariable String page) {
        Lg.log("listPage", page);
        return "user/" + page;
    }
    
    @RequestMapping(path = "/user/leave")
    public String leave(String page) {
//        ModelAndView modelAndView = new ModelAndView();
//        List<ProcessDefinition> procdef = repositoryService.createProcessDefinitionQuery().list();
//        modelAndView.addObject("procdef", procdef);
//        modelAndView.setViewName("task/starttask");
//        List<User> userList = identityService.createUserQuery().orderByUserId().asc().list();
//        modelAndView.addObject("userList", userList);
//        return modelAndView;
        return "user/leave";
    }
    
    /**
     * 请假表单提交
     *
     * @param page
     * @return
     */
    @ResponseBody
    @RequestMapping(path = "/user/leave", params = {"commit"}, method = RequestMethod.POST, produces = {"text/plain;charset=utf-8"})
    public String leaveCommit(String page) {
        return JsonUtils.objectToJson(BaseJson.setOK("提交成功"));
    }
    
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//    @RequestMapping("/sys/user/{page}")
//    public String listSysPage(@PathVariable String page) {
//        Lg.log("listPage", page);
//        return "sys/user/" + page;
//    }
    @RequestMapping("/sys/user/index")
    public String listSysPage() {
        Lg.log("listPage", "/sys/user/index");
        return "sys/user/index";
    }
    
    /**
     * 增加用户
     *
     * @param mav
     * @return
     */
    @RequestMapping(path = "/sys/user/form", params = {"add"})
    public ModelAndView formAdd(ModelAndView mav) {
        mav.setViewName("sys/user/form");
        User user = new User();
        user.setStatus(1);
        mav.addObject("user", user);
        
        Lg.log("add");
        mav.addObject("url", "/sys/user/addUser.action");
        mav.addObject("title", "添加用户");
        
        List<Role> roleList = roleService.getAllRoles();
        mav.addObject("roleList", roleList);
        
        return mav;
    }
    
    /**
     * 修改用户
     *
     * @param mav
     * @return
     */
    @RequestMapping(path = "/sys/user/form", params = {"edit"})
    public ModelAndView formUpdate(ModelAndView mav, Integer userId) {
        User user = userService.findUser(userId);
        
        mav.setViewName("sys/user/form");
        Lg.log("update");
        mav.addObject("url", "/sys/user/updateUser.action");
        mav.addObject("title", "修改用户");
        mav.addObject("user", user);
        List<Role> roleList = roleService.getAllRoles();
        List<String> userRoleListChecked = roleService.getUserRoleList(userId);
        Lg.log("userRoleListChecked" + userRoleListChecked);
        mav.addObject("roleList", roleList);
        mav.addObject("userRoleListChecked", userRoleListChecked);
        // TODO 处理已选中
        //mav.addObject("roleList", roleListSelected);
        Lg.log("user in update", user);
        
        return mav;
    }
    
    @RequestMapping(value = "/sys/user/addUser", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String addUser(User user) {
        user.setCreateTime(new Date());
        user.setCreateUserId(ShiroUtils.getUser().getUserId());
        user.setPassword(PasswordUtil.md5(user.getPassword(), user.getUserName()));
        
        Lg.log("addUser", user);
        
        BaseJson baseJson = null;
        if (user != null) {
            userService.addUser(user);
            baseJson = BaseJson.setOK("添加成功");
        } else {
            baseJson = BaseJson.setError(GlobalFinallVar.ERROR, "网络异常，请检查网络");
        }
        return JsonUtils.objectToJson(baseJson);
    }
    
    @RequestMapping(value = "/sys/user/updateUser", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String updateUser(User user) {
        Lg.log("updateUser", user);
        if (user.getPassword() != null) {
            user.setPassword(PasswordUtil.md5(user.getPassword(), user.getUserName()));
        }
        BaseJson baseJson = null;
        try {
            userService.updateUser(user);
            baseJson = BaseJson.setOK("修改成功");
        } catch (Exception e) {
            e.printStackTrace();
            baseJson = BaseJson.setError(GlobalFinallVar.ERROR, "网络异常，请检查网络");
        }
        return JsonUtils.objectToJson(baseJson);
    }
    
    @RequestMapping(value = "/sys/user/findUser", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String getUser(Integer userId) {
        BaseJson baseJson = null;
        User user = userService.findUser(userId);
        if (user != null) {
            baseJson = BaseJson.setOK(user);
        } else {
            baseJson = BaseJson.setError(GlobalFinallVar.ERROR, "网络异常，请检查网络");
        }
        return JsonUtils.objectToJson(baseJson);
    }
    
    //@RequiresPermissions("sys:user:findAllUser")
    @RequestMapping(value = "/sys/user/findAllUser", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getUsers(Integer offset, Integer limit) {
        Lg.log("offset", offset);
        Lg.log("limit", limit);
        BootstrapTableResult pageBean = userService.findAllUser(offset / limit + 1, limit);
        if (pageBean != null) {
            return JsonUtils.objectToJson(pageBean);
        }
        return null;
    }
    
    
    @RequestMapping(value = "/sys/user/delete", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String deleteUser(@RequestBody Integer[] ids) {
        BaseJson baseJson = null;
        try {
            userService.deleteUser(ids);
            baseJson = BaseJson.setOK("删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            baseJson = BaseJson.setError(GlobalFinallVar.ERROR, "网络异常，请检查网络");
        }
        return JsonUtils.objectToJson(baseJson);
    }
    
}
