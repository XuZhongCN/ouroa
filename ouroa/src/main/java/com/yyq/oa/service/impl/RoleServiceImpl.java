package com.yyq.oa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yyq.oa.dao.RoleMapper;
import com.yyq.oa.dao.RoleMenuMapper;
import com.yyq.oa.pojo.Role;
import com.yyq.oa.service.RoleService;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.utils.ShiroUtils;
import com.yyq.oa.vo.BootstrapTableResult;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {
    
    @Resource
    private RoleMapper roleMapper;
    @Resource
    private RoleMenuMapper roleMenuMapper;
    
    @Override
    public List<String> getRoles(Integer userId) {
        return roleMapper.findRoles(userId);
    }
    
    @Override
    public BootstrapTableResult findAllRole(Integer currentPage, Integer pageSize) {
        PageHelper pageHelper = new PageHelper();
        pageHelper.startPage(currentPage, pageSize);
        List<Role> roles = roleMapper.findAllRole();
        PageInfo<Role> pageInfo = new PageInfo<>(roles);
        Long total = pageInfo.getTotal();
        /*PageBean pageBean = new PageBean();
        pageBean.setTotalNum(total.intValue());
        pageBean.setPageSize(pageSize);
        pageBean.setData(roles);
        pageBean.setCurrentPage(currentPage);*/
        //return pageBean;
        BootstrapTableResult bootstrapTableResult = new BootstrapTableResult(total, roles);
        return bootstrapTableResult;
    }
    
    @Override
    public void addRole(Role role) {
        if (role != null) {
            role.setCreateTime(new Date());
            role.setCreateUserId(Integer.parseInt(ShiroUtils.getUserId()));
            
            List<Integer> menuIdList = role.getMenuIdList();
            roleMapper.addRole(role);
            //Integer roleId = roleMapper.findRoleByName(role.getRoleName());
            if (menuIdList.size() != 0) {
                Lg.log("role.getRoleId() after add", role.getRoleId());
                roleMenuMapper.saveRoleMenu(role.getRoleId(), menuIdList);
            }
        }
    }
    
    @Override
    public void updateRole(Role role) {
        roleMapper.updateRole(role);
        roleMenuMapper.deleteRoleMenuById(role.getRoleId());
        List<Integer> menuIdList = role.getMenuIdList();
        if (menuIdList.size() == 0) {
            return;
        }
        roleMenuMapper.saveRoleMenu(role.getRoleId(), menuIdList);
    }
    
    @Override
    public void deleteRole(Integer[] roleId) {
        roleMapper.deleteRole(roleId);
    }
    
    
    @Override
    public Role findRole(Integer roleId) {
        return roleMapper.findRole(roleId);
    }
    
    @Override
    public List<String> getUserRoleList(Integer userId) {
        //TODO getUserRoleList
        List<String> userRoleList = roleMapper.getUserRoleList(userId);
        return userRoleList;
    }
    
    @Override
    public List<Role> getAllRoles() {
        List<Role> roleList = roleMapper.findAllRole();
        return roleList;
    }
}
