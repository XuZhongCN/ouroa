package com.yyq.oa.pojo;

import java.io.Serializable;

public class TaskInfo implements Serializable {
    private static final long serialVersionUID = 1L;
    private String key;//流程事项的key(名字)
    private String assignee;//指定办理人
    private String bo_name;
    private String bo_money;
    private String bo_reason;
    
    public TaskInfo() {
    
    }
    
    
    public String getAssignee() {
        return assignee;
    }
    
    public void setAssignee(String assignee) {
        this.assignee = assignee;
    }
    
    public String getBo_name() {
        return bo_name;
    }
    
    public void setBo_name(String bo_name) {
        this.bo_name = bo_name;
    }
    
    public String getBo_money() {
        return bo_money;
    }
    
    public void setBo_money(String bo_money) {
        this.bo_money = bo_money;
    }
    
    public String getBo_reason() {
        return bo_reason;
    }
    
    public void setBo_reason(String bo_reason) {
        this.bo_reason = bo_reason;
    }
    
    public String getKey() {
        return key;
    }
    
    public void setKey(String key) {
        this.key = key;
    }
    
    public TaskInfo(String key, String assignee, String bo_name, String bo_money, String bo_reason) {
        super();
        this.key = key;
        this.assignee = assignee;
        this.bo_name = bo_name;
        this.bo_money = bo_money;
        this.bo_reason = bo_reason;
    }
    
    @Override
    public String toString() {
        return "TaskInfo{" +
                "key='" + key + '\'' +
                ", assignee='" + assignee + '\'' +
                ", bo_name='" + bo_name + '\'' +
                ", bo_money='" + bo_money + '\'' +
                ", bo_reason='" + bo_reason + '\'' +
                '}';
    }
}
