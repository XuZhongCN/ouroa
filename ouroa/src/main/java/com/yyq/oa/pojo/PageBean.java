package com.yyq.oa.pojo;

import java.io.Serializable;
/**
 * 封装分页数据
 * @author jackiechan
 *
 */
import java.util.List;

public class PageBean implements Serializable {
    private Integer currentPage;
    private Integer pageSize;
    private Integer totalPage;//总页数
    private Integer totalNum;//总条数
    private Integer nextPage;//下一页
    private Integer lastPage;//上一页
    private List data;//当前的数据
    
    
    public Integer getNextPage() {
        nextPage = getCurrentPage() + 1 > getTotalPage() ? getCurrentPage() : getCurrentPage() + 1;
        return nextPage;
    }
    
    public void setNextPage(Integer nextPage) {
        this.nextPage = nextPage;
    }
    
    public Integer getLastPage() {
        lastPage = (getCurrentPage() - 1) < 1 ? 1 : (getCurrentPage() - 1);
        return lastPage;
    }
    
    public void setLastPage(Integer lastPage) {
        this.lastPage = lastPage;
    }
    
    public Integer getCurrentPage() {
        return currentPage;
    }
    
    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }
    
    public Integer getPageSize() {
        return pageSize;
    }
    
    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
    
    public Integer getTotalPage() {
        totalPage = (getTotalNum() + getPageSize() - 1) / getPageSize();
        return totalPage;
    }
    
    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }
    
    public Integer getTotalNum() {
        return totalNum;
    }
    
    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }
    
    public List getData() {
        return data;
    }
    
    public void setData(List data) {
        this.data = data;
    }
    
}
