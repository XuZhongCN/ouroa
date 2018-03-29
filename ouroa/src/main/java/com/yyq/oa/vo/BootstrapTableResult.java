package com.yyq.oa.vo;

import java.util.List;

public class BootstrapTableResult {

	 private long total;
	 private List<?> rows;
	public BootstrapTableResult() {
		super();
	}
	
	public BootstrapTableResult(long total, List<?> rows) {
		super();
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
		return "BootstrapTableResult [total=" + total + ", rows=" + rows + "]";
	}
	 
}
