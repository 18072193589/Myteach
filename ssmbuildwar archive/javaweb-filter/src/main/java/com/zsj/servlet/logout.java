package com.zsj.servlet;

import com.zsj.util.Constant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object usrt_session = req.getSession().getAttribute(Constant.USRT_SESSION);
        if(usrt_session!=null){
            req.getSession().removeAttribute(Constant.USRT_SESSION);
            resp.sendRedirect("/Login.jsp");
        }else{
            resp.sendRedirect("/Login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
