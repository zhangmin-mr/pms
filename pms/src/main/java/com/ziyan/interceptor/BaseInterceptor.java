//package com.ziyan.interceptor;
//
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class BaseInterceptor implements HandlerInterceptor
//{
//
//
//    /**
//     * 在controller之前执行
//     */
//    @Override
//    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
//
//
//        System.out.println("************BaseInterceptor preHandle executed**********");
//        return true;
//    }
//
//
//    /**
//     * 在controller执行之后的视图View渲染之前执行
//     */
//    @Override
//    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
//        System.out.println("************BaseInterceptor postHandle executed**********");
//    }
//
//    /**
//     * 在页面渲染完成返回给客户端之前执行
//     * */
//
//    @Override
//    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
//        System.out.println("************BaseInterceptor afterCompletion executed**********");
//    }
//}
