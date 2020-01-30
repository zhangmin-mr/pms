package com.ziyan.utils;

import com.google.common.collect.Maps;
import com.ziyan.entity.Page;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class JsonResult implements Serializable {

	private static final long serialVersionUID = 3325376724827177132L;

	/** 信息 **/
	private String msg;

	/** 成功 **/
	private int code;
	/** 数据 **/
	private Object data;

	public JsonResult() {
		super();
	}

	public JsonResult(Object data, String msg, int code) {
		super();
		this.msg = msg;
		this.code = code;
		Map<String, Object> map = Maps.newHashMap();
		map.put("item", data);
		this.data = map;
	}

	public JsonResult(Page data, String msg, int code) {
		super();
		this.msg = msg;
		this.code = code;
		Map<String, Object> map = Maps.newHashMap();
		map.put("page", "");
		if(data!=null) {
			map.put("page", data);
		}
		this.data = map;
	}

	public JsonResult(List data, String msg, int code) {
		super();
		this.msg = msg;
		this.code = code;
		Map<String, Object> map = Maps.newHashMap();
		map.put("list", "");
		if(data!=null) {
			map.put("list", data);
		}
		this.data = map;
	}

	public JsonResult(Object data) {
		this.code = 0;
		this.data = data;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}


}
