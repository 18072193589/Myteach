package com.zsj.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;

public class CookieDemo03 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();
        //返回数组,Cookie可能存多个
        Cookie[] cookies = req.getCookies();
        //判断Cookie是否存在
        if(cookies!=null){
            out.write("你上一次访问的时间:");
            for (int i=0;i<cookies.length;i++) {
                Cookie cookie = cookies[i];
                if(cookie.getName().equals("name")){
                    //如果是我们要的那个,获取其中的值
                    //解码
                    URLDecoder.decode(cookie.getValue(),"utf-8");
                    out.write(cookie.getValue());

                }
            }
        }
        else{
            out.write("这是您第一次访问");
        }
        //编码
        Cookie cookie = new Cookie("name", URLEncoder.encode("朱绅聚","utf-8"));
        resp.addCookie(cookie);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
