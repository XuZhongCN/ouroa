package com.yyq.oa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yyq.oa.dao.MenuMapper;
import com.yyq.oa.pojo.Menu;
import com.yyq.oa.pojo.PageBean;
import com.yyq.oa.service.MenuService;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.vo.BootstrapTableResult;
import com.yyq.oa.vo.Perms;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {
    
    @Resource
    private MenuMapper menuMapper;
    
    @Override
    public List<String> getMenus(Integer userId) {
        return menuMapper.findMenus(userId);
    }
    
    @Override
    public BootstrapTableResult findAllMenu(Integer currentPage, Integer pageSize) {
        PageHelper pageHelper = new PageHelper();
        pageHelper.startPage(currentPage, pageSize);
        List<Menu> menus = menuMapper.findAllMenu();
        PageInfo<Menu> pageInfo = new PageInfo<>(menus);
        Long total = pageInfo.getTotal();
        BootstrapTableResult bootstrapTableResult = new BootstrapTableResult(total, menus);
        return bootstrapTableResult;
    }
    
    @Override
    public void addMenu(Menu menu) {
        if (menu != null) {
            menu.setParentId(menu.getParentMenu().getMenuId());
            Lg.log("menu in menuserviceimple update", menu);
            menuMapper.addMenu(menu);
        }
    }
    
    @Override
    public void updateMenu(Menu menu) {
        menu.setParentId(menu.getParentMenu().getMenuId());
        Lg.log("menu in menuserviceimple update", menu);
        menuMapper.updateMenu(menu);
    }
    
    @Override
    public void deleteMenu(Integer[] menuId) {
        menuMapper.deleteMenu(menuId);
    }
    
    
    @Override
    public Menu findMenu(Integer menuId) {
        return menuMapper.findMenu(menuId);
    }
    
    @Override
    public List<String> getUserPermsList(Integer userId) {
        // TODO getUserPermsList
        List<String> userPermsList = menuMapper.getUserPermsList(userId);
        return userPermsList;
    }
    
    @Override
    public List<Menu> findAllMenuForTree() {
        return menuMapper.findAllMenu();
    }
    
    @Override
    public List<Integer> getMenusId(Integer roleId) {
        return menuMapper.findMenusIdByRoleId(roleId);
    }
    
    @Override
    public List<Perms> getAllUrlPerms() {
        return menuMapper.findAllUrlPerms();
    }
    
}
