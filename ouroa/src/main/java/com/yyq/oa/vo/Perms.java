package com.yyq.oa.vo;

import java.io.Serializable;

/**
 * Created by QJY on 2017/12/12.
 */
public class Perms implements Serializable {
    private String url;
    private String perms;
    
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
    
    @Override
    public String toString() {
        return "Perms{" +
                "url='" + url + '\'' +
                ", perms='" + perms + '\'' +
                '}';
    }
}
