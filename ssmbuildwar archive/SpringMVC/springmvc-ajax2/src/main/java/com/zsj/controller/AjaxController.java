package com.zsj.controller;

import com.zsj.pojo.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class AjaxController {
    @RequestMapping("/t1")
    public String test(){
        return "hello";
    }
    @RequestMapping("/a1")
    public void a1(String name, HttpServletResponse response) throws IOException {
        System.out.println("name=====>"+name);
        if("zsj".equals(name)){
            response.getWriter().print("true");
        }else{
            response.getWriter().print("false");
        }
    }
    @RequestMapping("/a2")
    public List<User> a2(){
        ArrayList<User> userlist = new ArrayList<>();

        userlist.add(new User("朱绅聚",5,"男"));
        userlist.add(new User("陈珞珞",5,"女"));
        userlist.add(new User("五分",5,"女"));

        return userlist;
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
