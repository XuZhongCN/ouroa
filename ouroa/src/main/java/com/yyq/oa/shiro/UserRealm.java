package com.yyq.oa.shiro;

import com.yyq.oa.pojo.User;
import com.yyq.oa.service.MenuService;
import com.yyq.oa.service.RoleService;
import com.yyq.oa.service.UserService;
import com.yyq.oa.utils.Lg;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

/**
 * Created by QJY on 2017/12/8.
 */
public class UserRealm extends AuthorizingRealm {
    
    @Resource
    private UserService userService;
    
    @Resource
    private RoleService roleService;
    
    @Resource
    private MenuService menuService;
    
    /*
    *认证 
    */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = (String) token.getPrincipal();
        Lg.log("userrealm username", username);
        User user = userService.findUserByName(username);
        Lg.log("user", user);
        
        if (user == null) {
            throw new UnknownAccountException("用户不存在");
        }
        //~~~~~~~~~~~~~~~~~~~~~~~~~重点~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        String password = new String((char[]) token.getCredentials());
        //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        
        Lg.log("password", password);
        //密码不正确
        if (!password.equals(user.getPassword())) {
            throw new IncorrectCredentialsException("密码不正确");
        }
        //用户被锁定
        if (user.getStatus() == 0) {
            throw new LockedAccountException("帐号已被锁定，请联系管理员");
        }
//        ByteSource salt = ByteSource.Util.bytes(user.getUserName());
//        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, password, salt, getName());
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, password, getName());
        return info;
    }
    
    /**
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        Lg.log("AuthorizationInfo", "doGetAuthorizationInfo");
        User user = (User) principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //获得用户所有角色
        List<String> roles = roleService.getUserRoleList(user.getUserId());
        
        //A {@code Subject} represents state and security operations for a <em>single</em> application user.
        Lg.log("roles in AuthorizationInfo effective ", Arrays.toString(roles.toArray()));
        
        info.addRoles(roles);
        //获得用户权限
        List<String> permissions = menuService.getUserPermsList(user.getUserId());
        //Arrays.asList("sys:role:list", "sys:role:info");
        for (String permission : permissions) {
            Lg.log("permission", permission);
        }
        info.addStringPermissions(permissions);
        
        return info;
    }
}
