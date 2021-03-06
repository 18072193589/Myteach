package com.zsj.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloControler implements Controller {

    @Override
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        //模型和视图
        ModelAndView mv = new ModelAndView();
        //封装对象,装在ModelAndView中
        mv.addObject("msg","HelloSpringmvc!");
        mv.setViewName("text");//:/WEB-INF/text.jsp
        return mv;
    }
}
