package com.yyq.oa.service;

import com.yyq.oa.pojo.User;
import com.yyq.oa.vo.BootstrapTableResult;

import java.util.List;

public interface UserService {
    
    User findUserByName(String username);
    
    void addUser(User user);
    
    void deleteUser(Integer[] userId);
    
    void updateUser(User user);
    
    User findUser(Integer userId);
    
    BootstrapTableResult findAllUser(Integer currentPage, Integer pageSize);
    
    /**
     * 获得上级userName list
     *
     * @return
     */
    List<String> getManagerUserNameList();
}
