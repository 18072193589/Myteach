package com.zsj.controller;

import com.zsj.pojo.User;
import com.zsj.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class AjaxController {
    @Autowired
    @Qualifier("LoginServiceImpl")
    public LoginService loginService;
    @RequestMapping("rgistercheak")
    public String regiset(String name,String pwd){
        String msg="";
        if(name!=null) {
            if (loginService.Loginfindpwd(name)==null) {
                msg = "ok";
            } else {
                msg = "用户名已存在";
            }
        }
        return msg;
    }
    @RequestMapping("/a3")
    public String a3(String name,String pwd){
        String msg="";
        if(name!=null) {
            if ("admin".equals(name)) {
                msg = "ok";
            } else {
                msg = "用户名有误";
            }
        }
        if(pwd!=null&&name!=null) {
            if ("12345".equals(pwd)) {
                msg = "ok";
            } else {
                msg = "密码有误";
            }
        }
        return msg;
    }

}
