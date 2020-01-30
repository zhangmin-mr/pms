package com.ziyan.controller;



import com.ziyan.entity.Page;
import com.ziyan.utils.JsonResult;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * 基础controller
 * 
 * @author Jorge
 *
 *         2017年12月11日
 */
@CrossOrigin(origins = { "" }, allowCredentials = "true")
public abstract class BaseController {
	protected Logger logger = LogManager.getLogger(getClass());




	/**
	 * 添加Model消息
	 * 
	 * @param messages
	 */
	protected void addMessage(Model model, String... messages) {
		StringBuilder sb = new StringBuilder();
		for (String message : messages) {
			sb.append(message).append(messages.length > 1 ? "<br/>" : "");
		}
		model.addAttribute("message", sb.toString());

	}




	/**
	 * 重定向转发消息 添加Flash消息 return "redirect:/.."
	 * 
	 * @param messages
	 */
	protected void addMessage(RedirectAttributes redirectAttributes, String... messages) {
		StringBuilder sb = new StringBuilder();
		for (String message : messages) {
			sb.append(message).append(messages.length > 1 ? "<br/>" : "");
		}
		redirectAttributes.addFlashAttribute("message", sb.toString());
	}

	/**
	 * 客户端返回字符串
	 * 
	 * @param response
	 * @param string
	 * @return
	 */
	protected String renderString(HttpServletResponse response, String string, String type) {
		try {
			response.reset();
			response.setContentType(type);
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(string);
			return null;
		} catch (IOException e) {
			return null;
		}
	}


	public JsonResult success(Object data) {
		if(data==null) {
			data = "";
		}
		return new JsonResult(data, "操作成功", 0);
	}
	public JsonResult success(Page data) {
		return new JsonResult(data, "操作成功", 0);
	}
	public JsonResult success(List data) {
		return new JsonResult(data, "操作成功", 0);
	}
	public JsonResult error(int code,String msg) {
		return new JsonResult("",msg, code);
	}
	public JsonResult error(int code,String msg,Object data) {
		return new JsonResult(data, msg, code);
	}


}
