package com.yyq.oa.controller;

import com.yyq.oa.pojo.BaseJson;
import com.yyq.oa.pojo.Menu;
import com.yyq.oa.service.MenuService;
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

import static java.awt.SystemColor.menu;

/**
 * Created by QJY on 2017/12/8.
 */
@Controller
//@RequestMapping("/menu")
public class MenuController {
    
    @Resource
    private MenuService menuService;
    
    @RequestMapping("/sys/menu/index")
    public String listSysPage() {
        Lg.log("listPage", "/sys/menu/index");
        return "sys/menu/index";
    }
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    /**
     * 增加用户
     *
     * @param mav
     * @return
     */
    @RequestMapping(path = "/sys/menu/form", params = {"add"})
    public ModelAndView formAdd(ModelAndView mav) {
        mav.setViewName("sys/menu/form");
        mav.addObject("role", new Menu());
        Lg.log("add");
        mav.addObject("title", "新建菜单");
        mav.addObject("flag", "add");

//        List<Menu> roleList = M.getAllRoles();
//        mav.addObject("roleList", roleList);
        
        return mav;
    }
    
    /**
     * 修改用户
     * 弃用
     *
     * @param mav
     * @return
     */
    @RequestMapping(path = "/sys/menu/form", params = {"edit"})
    public ModelAndView formUpdate(ModelAndView mav, Integer menuId) {
        Menu menu = menuService.findMenu(menuId);
        
        mav.setViewName("sys/menu/form");
        Lg.log("update formUpdate", menuId);
        mav.addObject("title", "修改菜单信息");
        mav.addObject("flag", "edit");
        mav.addObject("menuId", menuId);
        mav.addObject("menu", menu);
        
        Lg.log("menu in update", menu);
        
        return mav;
    }
    
    @ResponseBody
    @RequestMapping(path = "/sys/menu/info", produces = {"text/plain;charset=utf-8"})
    public String getInfo(Integer menuId) {
        Lg.log("menuId in info", menuId);
        Menu menu = menuService.findMenu(menuId);
        Lg.log("menu in info", menu);
        
        return JsonUtils.objectToJson(BaseJson.setOK(menu));
    }
    
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    
    @RequestMapping(value = "/sys/menu/addMenu", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String addMenu(@RequestBody Menu menu) {
        Lg.log("menu in addMenu", menu);
        menuService.addMenu(menu);
        return JsonUtils.objectToJson(BaseJson.setOK("添加成功"));
    }
    
    @RequestMapping(value = "/sys/menu/updateMenu", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String updateMenu(@RequestBody Menu menu) {
        Lg.log("menu in update", menu);
        menuService.updateMenu(menu);
        return JsonUtils.objectToJson(BaseJson.setOK("修改失败"));
    }
    
    
    @RequestMapping(value = "/sys/menu/findAllMenu", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String getMenus(Integer offset, Integer limit) {
//        PageBean pageBean = menuService.findAllMenu(currentPage, pageSize);
//        return JsonUtils.objectToJson(pageBean);
        BootstrapTableResult pageBean = menuService.findAllMenu(offset / limit + 1, limit);
        if (pageBean != null) {
            return JsonUtils.objectToJson(pageBean);
        }
        return null;
    }
    
    @RequestMapping(value = "/sys/menu/delete", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String removeMenu(@RequestBody Integer[] ids) {
        BaseJson baseJson = null;
        try {
            menuService.deleteMenu(ids);
            baseJson = BaseJson.setOK("删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            baseJson = BaseJson.setError(GlobalFinallVar.ERROR, "网络异常，请检查网络");
        }
        return JsonUtils.objectToJson(baseJson);
    }
    
    
    @RequestMapping(value = "/selectMenu", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String getMenu(Integer menuId) {
        Menu menu = menuService.findMenu(menuId);
        return JsonUtils.objectToJson(menu);
    }
    
    
    @RequestMapping(value = "/sys/menu/getAllMenuForTree", produces = {"text/plain;charset=utf-8"})
    @ResponseBody
    public String getAllMenu(Integer menuId) {
        List<Menu> allMenuForTree = menuService.findAllMenuForTree();
        return JsonUtils.objectToJson(BaseJson.setOK(allMenuForTree));
    }
    
}
