package com.yyq.oa.dao;

import com.yyq.oa.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {
    
    List<String> findRoles(Integer userId);
    
    List<Role> findAllRole();
    
    void addRole(Role role);
    
    void deleteRole(@Param("roleId") Integer[] roleId);
    
    void updateRole(@Param("role") Role role);
    
    Role findRole(Integer roleId);
    
    /**
     * 得到用户角色列表
     *
     * @return
     */
    List<String> getUserRoleList(@Param("userId") Integer userId);
}