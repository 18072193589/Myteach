package com.zsj.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //判断没有登陆
        if(request.getRequestURI().contains("login")){
            return true;
        }

        HttpSession session = request.getSession();
        if(session.getAttribute("userLoginInfo")!=null)
        return true;
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,response);
        return false;

    }
}
