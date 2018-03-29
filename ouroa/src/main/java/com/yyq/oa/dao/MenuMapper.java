package com.yyq.oa.dao;

import com.yyq.oa.pojo.Menu;
import com.yyq.oa.vo.Perms;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MenuMapper {
    
    List<Menu> findAllMenu();
    
    void addMenu(Menu menu);
    
    int updateMenu(@Param("menu") Menu menu);
    
    List<String> findMenus(Integer userId);
    
    void deleteMenu(@Param("menuId") Integer[] menuId);
    
    Menu findMenu(Integer menuId);
    
    List<String> getUserPermsList(@Param("userId") Integer userId);
    
    List<Integer> findMenusIdByRoleId(Integer roleId);
    
    List<Perms> findAllUrlPerms();
}