package com.yyq.oa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yyq.oa.dao.RoleMapper;
import com.yyq.oa.dao.UserMapper;
import com.yyq.oa.dao.UserRoleMapper;
import com.yyq.oa.pojo.PageBean;
import com.yyq.oa.pojo.User;
import com.yyq.oa.service.UserService;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.vo.BootstrapTableResult;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by QJY on 2017/12/8.
 */
@Service
public class UserServiceImpl implements UserService {
    
    @Resource
    private UserMapper userMapper;
    
    @Resource
    private UserRoleMapper userRoleMapper;
    
    public User findUserByName(String username) {
        return userMapper.findUserByName(username);
    }
    
    @Override
    public void addUser(User user) {
        if (user != null) {
            userMapper.addUser(user);
            List<Integer> roleIdList = user.getRoleIdList();
            if (roleIdList != null && roleIdList.size() != 0) {
                Lg.log("user.getUserId() after add user", user.getUserId());
                userRoleMapper.save(user.getUserId(), roleIdList);
            }
        }
    }
    
    @Override
    public void deleteUser(Integer[] userId) {
        userMapper.deleteUser(userId);
    }
    
    @Override
    public void updateUser(User user) {
        userRoleMapper.deleteByUserId(user.getUserId());
        userMapper.updateUser(user);
        List<Integer> roleIdList = user.getRoleIdList();
        if (roleIdList != null && roleIdList.size() != 0) {
            userRoleMapper.save(user.getUserId(), roleIdList);
        }
    }
    
    @Override
    public User findUser(Integer userId) {
        return userMapper.findUser(userId);
    }
    
    @Override
    public BootstrapTableResult findAllUser(Integer currentPage, Integer pageSize) {
        PageHelper pageHelper = new PageHelper();
        pageHelper.startPage(currentPage, pageSize);
        List<User> users = userMapper.findAllUser();
        PageInfo<User> pageInfo = new PageInfo<>(users);
        Long total = pageInfo.getTotal();
       /* PageBean pageBean = new PageBean();
        pageBean.setCurrentPage(currentPage);
        pageBean.setData(users);
        pageBean.setPageSize(pageSize);
        pageBean.setTotalNum(total.intValue());*/
        BootstrapTableResult bootstrapTableResult = new BootstrapTableResult(total, users);
        return bootstrapTableResult;
    }
    
    @Override
    public List<String> getManagerUserNameList() {
        List<String> userNameList = userMapper.getUserNameList();
        return userNameList;
    }
}
