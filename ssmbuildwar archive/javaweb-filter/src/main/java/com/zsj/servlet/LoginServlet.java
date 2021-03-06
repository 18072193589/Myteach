package com.zsj.servlet;

import com.zsj.util.Constant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取前端参数
        String username = req.getParameter("username");
        if(username.equals("admin")){
            req.getSession().setAttribute(Constant.USRT_SESSION,req.getSession().getId());
            resp.sendRedirect("/sys/success.jsp");
        }else{
            resp.sendRedirect("/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
