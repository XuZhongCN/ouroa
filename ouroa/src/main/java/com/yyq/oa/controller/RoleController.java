package com.yyq.oa.controller;

import com.yyq.oa.pojo.BaseJson;
import com.yyq.oa.pojo.Role;
import com.yyq.oa.service.MenuService;
import com.yyq.oa.service.RoleService;
import com.yyq.oa.utils.GlobalFinallVar;
import com.yyq.oa.utils.JsonUtils;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.vo.BootstrapTableResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;


/**
 * Created by QJY on 2017/12/8.
 */
@Controller
//@RequestMapping("/role")
public class RoleController {
    
    @Resource
    private RoleService roleService;
    
    @Resource
    private MenuService menuService;
    
    @RequestMapping("/sys/role/index")
    public String listSysPage() {
        Lg.log("listPage", "sys/role/index");
        return "sys/role/index";
    }
    
    /**
     * 增加用户
     *
     * @param mav
     * @return
     */
    @RequestMapping(path = "/sys/role/form", params = {"add"})
    public ModelAndView formAdd(ModelAndView mav) {
        mav.setViewName("sys/role/form");
        mav.addObject("role", new Role());
        Lg.log("add");
        mav.addObject("url", "/sys/role/addRole.action");
        mav.addObject("title", "新建角色");
        mav.addObject("flag", "add");
        
        List<Role> roleList = roleService.getAllRoles();
        mav.addObject("roleList", roleList);
        
        return mav;
    }
    
    /**
     * 修改用户
     * 弃用
     *
     * @param mav
     * @return
     */
    @RequestMapping(path = "/sys/role/form", params = {"edit"})
    public ModelAndView formUpdate(ModelAndView mav, Integer roleId) {
        Role role = roleService.findRole(roleId);
        
        mav.setViewName("sys/role/form");
        Lg.log("update");
        mav.addObject("url", "/sys/role/updateRole.action");
        mav.addObject("title", "修改角色信息");
        mav.addObject("flag", "edit");
        mav.addObject("roleId", roleId);
        mav.addObject("role", role);
        
        // TODO 获取菜单树
        List<Role> roleList = roleService.getAllRoles();
        mav.addObject("roleList", roleList);
        //mav.addObject("roleList", roleListSelected);
        Lg.log("role in update", role);
        
        return mav;
    }
    
    @ResponseBody
    @RequestMapping(path = "/sys/role/info", produces = {"text/plain;charset=utf-8"})
    public String getInfo(Integer roleId) {
        Lg.log("userId in info", roleId);
        Role role = roleService.findRole(roleId);
        Lg.log("role in info", role);
        //获取到role 对应 权限
        List<Integer> menusId = menuService.getMenusId(roleId);
        role.setMenuIdList(menusId);
        
        return JsonUtils.objectToJson(BaseJson.setOK(role));
    }
    
    @RequestMapping(value = "/sys/role/findAllRole", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String getRoles(Integer offset, Integer limit) {
//        PageBean pageBean = roleService.findAllRole(currentPage,pageSize);
//        return JsonUtils.objectToJson(pageBean);
        BootstrapTableResult pageBean = roleService.findAllRole(offset / limit + 1, limit);
        if (pageBean != null) {
            return JsonUtils.objectToJson(pageBean);
        }
        return null;
    }
    
    @RequestMapping(value = "/sys/role/addRole", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String addRole(@RequestBody Role role) {
        Lg.log("addRole", role);
        roleService.addRole(role);
        return JsonUtils.objectToJson(BaseJson.setOK("增加成功"));
    }
    
    @RequestMapping(value = "/sys/role/updateRole", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String updateRole(@RequestBody Role role) {
        Lg.log("updateRole", role);
        roleService.updateRole(role);
        return JsonUtils.objectToJson(BaseJson.setOK("修改成功"));
    }
    
    @RequestMapping(value = "/sys/role/delete", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String removeRole(@RequestBody Integer[] ids) {
        BaseJson baseJson = null;
        try {
            roleService.deleteRole(ids);
            baseJson = BaseJson.setOK("删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            baseJson = BaseJson.setError(GlobalFinallVar.ERROR, "网络异常，请检查网络");
        }
        return JsonUtils.objectToJson(baseJson);
    }
    
    @RequestMapping(value = "/selectRole", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String getRole(Integer roleId) {
        Role role = roleService.findRole(roleId);
        return JsonUtils.objectToJson(role);
    }
    
}
