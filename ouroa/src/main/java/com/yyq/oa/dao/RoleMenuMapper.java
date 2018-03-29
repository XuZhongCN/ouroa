package com.yyq.oa.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMenuMapper {
    
    void saveRoleMenu(@Param("roleId") Integer roleId, @Param("menuIdList") List<Integer> menuIdList);
    
    void deleteRoleMenuById(@Param("roleId") Integer roleId);
}