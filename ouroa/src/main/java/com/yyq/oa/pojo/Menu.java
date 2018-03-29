package com.yyq.oa.pojo;

import java.io.Serializable;

public class Menu implements Serializable {
    
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    
    private Integer menuId;
    
    private Menu parentMenu;
    
    private String menuName;
    
    private String url;
    
    private String perms;
    
    private Integer type;
    
    private String icon;
    
    /**
     * 排序
     */
    private Integer orderNum;
    //----------------------------------------------------------------------------------------
    /* ztree属性 */
    private Integer parentId;
    
    public Integer getParentId() {
        return parentId;
    }
    
    
    public Integer getMenuId() {
        return menuId;
    }
    
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }
    
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }
    
    public Menu getParentMenu() {
        return parentMenu;
    }
    
    public void setParentMenu(Menu parentMenu) {
        this.parentMenu = parentMenu;
    }
    
    public String getMenuName() {
        return menuName;
    }
    
    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }
    
    public String getUrl() {
        return url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    
    public String getPerms() {
        return perms;
    }
    
    public void setPerms(String perms) {
        this.perms = perms;
    }
    
    public Integer getType() {
        return type;
    }
    
    public void setType(Integer type) {
        this.type = type;
    }
    
    public String getIcon() {
        return icon;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
    
    public Integer getOrderNum() {
        return orderNum;
    }
    
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }
    
    @Override
    public String toString() {
        return "Menu{" +
                "menuId=" + menuId +
                ", parentMenu=" + parentMenu +
                ", menuName='" + menuName + '\'' +
                ", url='" + url + '\'' +
                ", perms='" + perms + '\'' +
                ", type=" + type +
                ", icon='" + icon + '\'' +
                ", orderNum=" + orderNum +
                ", parentId=" + parentId +
                '}';
    }
}
