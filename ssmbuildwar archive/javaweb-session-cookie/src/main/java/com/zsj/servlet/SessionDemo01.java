package com.zsj.servlet;

import com.zsj.pojo.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionDemo01 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //解决乱码问题
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        //得到session
        HttpSession session = req.getSession();
        //给session中存东西
        session.setAttribute("name",new Person("朱绅聚","22"));
        //获取session的ID
        String sessionId = session.getId();
        //判断session是不是新创建
        if(session.isNew()){
            resp.getWriter().write("session创建成功,ID:"+sessionId);
        }
        else{
            resp.getWriter().write("session在服务器中存在了,ID"+sessionId);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
