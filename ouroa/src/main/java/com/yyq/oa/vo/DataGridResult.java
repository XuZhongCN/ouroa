package com.yyq.oa.vo;

import java.util.List;

public class DataGridResult {
    
    private long total;
    private List<?> rows;
    
    public DataGridResult() {
    }
    
    public DataGridResult(List<?> rows, long total) {
        this.total = total;
        this.rows = rows;
    }
    
    public long getTotal() {
        return total;
    }
    
    public void setTotal(long total) {
        this.total = total;
    }
    
    public List<?> getRows() {
        return rows;
    }
    
    public void setRows(List<?> rows) {
        this.rows = rows;
    }
    
    @Override
    public String toString() {
        return "DataGridResult{" +
                "total=" + total +
                ", rows=" + rows +
                '}';
    }
}
