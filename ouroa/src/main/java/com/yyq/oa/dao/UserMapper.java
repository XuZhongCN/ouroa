package com.yyq.oa.dao;

import com.yyq.oa.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    
    User findUserByName(@Param("userName") String userName);
    
    void addUser(User user);
    
    void deleteUser(@Param("userId") Integer[] userId);
    
    void updateUser(@Param("user") User user);
    
    User findUser(Integer userId);
    
    List<User> findAllUser();
    
    List<String> getUserNameList();
}