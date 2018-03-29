package com.yyq.oa.pojo;

import org.activiti.engine.ProcessEngineConfiguration;

import java.io.Serializable;
import java.util.Date;

//import org.activiti.engine.impl.persistence.entity.DeploymentEntity;

/**
 * Created by QJY on 2017/12/10.
 */
public class MyDeploymentEntity implements Serializable {
    private String id;
    private String name;
    private String category;
    private String tenantId = ProcessEngineConfiguration.NO_TENANT_ID;
    private Date deploymentTime;
    private boolean isNew;
    
    public void setId(String id) {
        this.id = id;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }
    
    public void setDeploymentTime(Date deploymentTime) {
        this.deploymentTime = deploymentTime;
    }
    
    public String getId() {
        return id;
    }
    
    public String getName() {
        return name;
    }
    
    public String getCategory() {
        return category;
    }
    
    public String getTenantId() {
        return tenantId;
    }
    
    public Date getDeploymentTime() {
        return deploymentTime;
    }
    
    public boolean isNew() {
        return isNew;
    }
    
    public void setNew(boolean aNew) {
        isNew = aNew;
    }
    
    @Override
    public String toString() {
        return "MyDeploymentEntity{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", tenantId='" + tenantId + '\'' +
                ", deploymentTime=" + deploymentTime +
                ", isNew=" + isNew +
                '}';
    }
}
