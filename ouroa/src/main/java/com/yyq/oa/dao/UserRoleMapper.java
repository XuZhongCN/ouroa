package com.yyq.oa.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserRoleMapper {
    
    void deleteByUserId(@Param("userId") Integer userId);
    
    void save(@Param("userId") Integer userId, @Param("roleIdList") List<Integer> roleIdList);
}