package com.ziyan.entity;

import com.github.pagehelper.PageInfo;

import java.util.List;

public class Page<T> {
	//每页显示的数据
	public static final int PAGESIZE=5;

	private int pageNum;
	private int firstPage;
	private int lagePage;
	private List<T> list;
	private long total;
	private Double totalMoney;

	public Page() {
	}
	public Page(List<T> data) {
		this.list = data;
	}

	public Page(PageInfo<T> pageInfo) {
		this.pageNum = pageInfo.getPageNum();
		this.total = pageInfo.getTotal();
		this.firstPage = pageInfo.getFirstPage();
		this.lagePage = pageInfo.getLastPage();
		this.list = pageInfo.getList();
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}

	public int getFirstPage() {
		return firstPage;
	}

	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}

	public int getLagePage() {
		return lagePage;
	}

	public void setLagePage(int lagePage) {
		this.lagePage = lagePage;
	}

	public Double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}
}
