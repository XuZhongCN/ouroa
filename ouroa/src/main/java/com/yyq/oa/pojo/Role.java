package com.yyq.oa.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Role implements Serializable {
    
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    
    private Integer roleId;
    
    private String roleName;
    
    private String remark;
    
    /**
     * 创建者ID
     */
    private Integer createUserId;
    
    private Date createTime;
    
    /**
     * 页面展示需要
     */
    private List<Integer> menuIdList;
    
    public String getRoleName() {
        return roleName;
    }
    
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    
    public String getRemark() {
        return remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
    }
    
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
    public List<Integer> getMenuIdList() {
        return menuIdList;
    }
    
    public void setMenuIdList(List<Integer> menuIdList) {
        this.menuIdList = menuIdList;
    }
    
    public Integer getRoleId() {
        return roleId;
    }
    
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
    
    public Integer getCreateUserId() {
        return createUserId;
    }
    
    public void setCreateUserId(Integer createUserId) {
        this.createUserId = createUserId;
    }
    
    @Override
    public String toString() {
        return "Role{" +
                "roleId=" + roleId +
                ", roleName='" + roleName + '\'' +
                ", remark='" + remark + '\'' +
                ", createUserId=" + createUserId +
                ", createTime=" + createTime +
                ", menuIdList=" + menuIdList +
                '}';
    }
}
