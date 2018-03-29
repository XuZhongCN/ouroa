package com.yyq.oa.service;

import com.yyq.oa.pojo.Menu;
import com.yyq.oa.vo.BootstrapTableResult;
import com.yyq.oa.vo.Perms;

import java.util.List;

public interface MenuService {
    
    List<String> getMenus(Integer userId);
    
    BootstrapTableResult findAllMenu(Integer currentPage, Integer pageSize);
    
    void addMenu(Menu menu);
    
    void deleteMenu(Integer[] menuId);
    
    void updateMenu(Menu menu);
    
    Menu findMenu(Integer menuId);
    
    
    /**
     * 获得用户
     *
     * @param userId
     * @return
     */
    List<String> getUserPermsList(Integer userId);
    
    List<Menu> findAllMenuForTree();
    
    /**
     * 获取 role 权限 menu
     *
     * @param roleId
     * @return
     */
    List<Integer> getMenusId(Integer roleId);
    
    List<Perms> getAllUrlPerms();
}
