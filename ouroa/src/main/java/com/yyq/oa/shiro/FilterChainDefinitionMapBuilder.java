package com.yyq.oa.shiro;

import com.yyq.oa.service.MenuService;
import com.yyq.oa.utils.InitDatabaseUtils;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.vo.Perms;
import org.apache.ibatis.io.Resources;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Properties;

/**
 * Created by QJY on 2017/12/8.
 */
public class FilterChainDefinitionMapBuilder {
    
    @Resource
    private MenuService menuService;
    
    public LinkedHashMap<String, String> build() {
        
        try {
            InputStream is = Resources.getResourceAsStream("conf/db.properties");
            Properties properties = new Properties();
            properties.load(is);
            if (!InitDatabaseUtils.isInitialized(properties)) {
                InitDatabaseUtils.importSql(properties);
                Lg.log("开始导入数据");
                Thread.sleep(10000);
                Lg.log("导入完毕");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        //静态资源
        LinkedHashMap<String, String> map = new LinkedHashMap<String, String>();
       
        /*查询出 url 对应权限*/
//        /schedule/job/info = perms[schedule:job:info]
        List<Perms> urlPerms = menuService.getAllUrlPerms();
        for (Perms urlPerm : urlPerms) {
            Lg.log("urlPerms", urlPerm);
            map.put(urlPerm.getUrl(), "perms[" + urlPerm.getPerms() + "]");
        }
        map.put("/images/**", "anon");
        map.put("/css/**", "anon");
        map.put("/script/**", "anon");
        map.put("/libs/**", "anon");
        map.put("/login.html", "anon");
        map.put("/login.action", "anon");
        map.put("/** ", "user");//登录之后才能访问
//        map.put("/** ", "rest[authc]");///**=rest[authc]<!-- 拦截所有get、post请求 -->
//        map.put("/** ", "");///**=rest[authc]<!-- 拦截所有get、post请求 -->
        
        
        Lg.log("--------------------------------------------");
        Lg.log(map);
        return map;
    }
}
