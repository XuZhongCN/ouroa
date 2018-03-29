package com.yyq.oa.vo;

import org.activiti.engine.impl.persistence.entity.SuspensionState;

import java.util.Date;

/**
 * Created by QJY on 2017/12/11.
 */
public class MyTask {
    
    private String id;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    private String owner;
    private String assignee;
    private String initialAssignee;
    private String name;
    private String description;
    private Date createTime; // The time when the task has been created
    private int suspensionState = SuspensionState.ACTIVE.getStateCode();
    private String category;
    
    public String getOwner() {
        return owner;
    }
    
    public void setOwner(String owner) {
        this.owner = owner;
    }
    
    public String getAssignee() {
        return assignee;
    }
    
    public void setAssignee(String assignee) {
        this.assignee = assignee;
    }
    
    public String getInitialAssignee() {
        return initialAssignee;
    }
    
    public void setInitialAssignee(String initialAssignee) {
        this.initialAssignee = initialAssignee;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
    public int getSuspensionState() {
        return suspensionState;
    }
    
    public void setSuspensionState(int suspensionState) {
        this.suspensionState = suspensionState;
    }
    
    public String getCategory() {
        return category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
}
