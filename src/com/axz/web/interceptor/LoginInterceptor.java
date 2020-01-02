package com.axz.web.interceptor;


import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    //预处理,返回视图之前
    //结果true为放行，false为拦截
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //如果是登录页面则放行
        if (request.getRequestURI().endsWith("login.do")) {
            return true;
        }
        HttpSession session = request.getSession();
        //如果用户已登录也放行
        if (session.getAttribute("user") != null) {
            return true;
        }
        //用户没有登录挑战到登录页面
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
        return false;
    }
}
