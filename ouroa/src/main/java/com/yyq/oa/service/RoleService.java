package com.yyq.oa.service;

import com.yyq.oa.pojo.Role;
import com.yyq.oa.vo.BootstrapTableResult;

import java.util.List;

public interface RoleService {
    
    List<String> getRoles(Integer userId);
    
    BootstrapTableResult findAllRole(Integer currentPage, Integer pageSize);
    
    void addRole(Role role);
    
    void deleteRole(Integer[] roleId);
    
    void updateRole(Role role);
    
    Role findRole(Integer roleId);
    
    /**
     * 得到用户角色列表
     *
     * @param userId
     * @return
     */
    List<String> getUserRoleList(Integer userId);
    
    List<Role> getAllRoles();
}

