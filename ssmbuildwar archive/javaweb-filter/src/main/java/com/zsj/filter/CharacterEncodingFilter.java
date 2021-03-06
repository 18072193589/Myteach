package com.zsj.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {
    //初始化
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("已经初始化");
    }

    @Override
    public void doFilter(ServletRequest Request, ServletResponse Response, FilterChain filterChain) throws IOException, ServletException {
        Request.setCharacterEncoding("utf-8");
        Response.setCharacterEncoding("utf-8");
        Response.setContentType("text/html;charset=UTF-8");
        System.out.println("CharacterEncodingFilter执行前.....");
        filterChain.doFilter(Request,Response);//让我们的请求继续走,如果不写,程序到这就停止了
        System.out.println("CharacterEncodingFilter执行后.....");
    }
    //销毁
    @Override
    public void destroy() {
        System.out.println("已经销毁");
    }
}
