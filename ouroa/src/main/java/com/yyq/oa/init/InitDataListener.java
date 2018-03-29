package com.yyq.oa.init;

import org.activiti.engine.IdentityService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContextAware;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;


public class InitDataListener implements InitializingBean, ServletContextAware {
    
    public InitDataListener() {
    
    }
    
    @Autowired
    private IdentityService identityService;
    
    @Override
    public void afterPropertiesSet() throws Exception {
    }
    
    /**
     * Set the {@link ServletContext} that this object runs in.
     * <p>Invoked after population of normal bean properties but before an init
     * callback like InitializingBean's {@code afterPropertiesSet} or a
     * custom init-method. Invoked after ApplicationContextAware's
     * {@code setApplicationContext}.
     *
     * @param servletContext ServletContext object to be used by this object
     * @see InitializingBean#afterPropertiesSet
     * @see ApplicationContextAware#setApplicationContext
     */
    @Override
    public void setServletContext(ServletContext servletContext) {
        addAdminUser();
    }
    
    public void addAdminUser() {
        User user = identityService.newUser("admin");
        user.setEmail("jack@sina.com");
        user.setFirstName("hello");
        user.setLastName("world");
        user.setPassword("admin");
        identityService.saveUser(user);
        identityService.setUserInfo("admin", "/listdeploy", "Activiti流程管理");
        identityService.setUserInfo("admin", "/listgroup", "用户组管理");
        identityService.setUserInfo("admin", "/listuser", "用户管理");
        identityService.setUserInfo("admin", "/listpower", "权限管理");
        Group groupEntity = identityService.newGroup("1001");
        groupEntity.setName("拥有最高权限，可以对普通用户进行操作");
        groupEntity.setType("administrator");
        
        identityService.saveGroup(groupEntity);
        /*change 1001 to 0001 admin to qjy*/
        identityService.createMembership("admin", "1001");
        
    }
    
    public void addInfo() {
        identityService.setUserInfo("admin", "/listdeploy", "Activiti流程管理");
        identityService.setUserInfo("admin", "/listgroup", "用户组管理");
        identityService.setUserInfo("admin", "/listuser", "用户管理");
        identityService.setUserInfo("admin", "/listpower", "权限管理");
    }
    
    public void addGroup() {
        Group groupEntity = identityService.newGroup("1001");
        groupEntity.setName("拥有最高权限，可以对普通用户进行操作");
        groupEntity.setType("administrator");
        identityService.saveGroup(groupEntity);
    }
    
    public void relUserAndGroup() {
        identityService.createMembership("admin", "1001");
    }
}
