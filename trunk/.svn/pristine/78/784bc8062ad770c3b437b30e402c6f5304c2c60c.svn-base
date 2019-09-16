package com.nuc.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Page<T> implements Serializable {


private static final long serialVersionUID = 337297181251071639L;
	
	private String keyWord;//查询关键字
	private List<T> list;//页面数据列表
	private String order;  //排序规则
	private Integer page;//当前页
	private Map<String, Object> pageMap = new HashMap<String, Object>() ;
	private T paramEntity;//多条件查询
	private Integer rows;//页大小
	private String sort;  //排序字段
	private Integer start;//需要这里处理

	private Integer totalRecord;// 总记录 数

	public String getKeyWord() {
		return keyWord;
	}

	public String getOrder() {
		return order;
	}
	public Integer getPage() {
		return page;
	}
	
	public Map<String, Object> getPageMap() {
		return pageMap;
	}
	public T getParamEntity() {
		return paramEntity;
	}

	public Integer getRows() {
		return rows;
	}
	public String getSort() {
		return sort;
	}
	public Integer getStart() {
		this.start = (page-1)*rows;
		return start;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public void setList(List<T> list) {
		pageMap.put("rows", list);
		this.list = list;
	}
	public void setOrder(String order) {
		this.order = order;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public void setParamEntity(T paramEntity) {
		this.paramEntity = paramEntity;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public void setTotalRecord(Integer totalRecord) {
		pageMap.put("total", totalRecord);
		this.totalRecord = totalRecord;
	}

	@Override
	public String toString() {
		return "Page [keyWord=" + keyWord + ", list=" + list + ", order="
				+ order + ", page=" + page + ", pageMap=" + pageMap
				+ ", paramEntity=" + paramEntity + ", rows=" + rows + ", sort="
				+ sort + ", start=" + start + ", totalRecord=" + totalRecord
				+ "]";
	}
	
	
}
