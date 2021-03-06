package com.zsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
@RequestMapping("/user")
@Controller
public class LoginController {

    @RequestMapping("/main")
    public String main(){
        return "main";
    }
    @RequestMapping("/gologin")
    public String gologin(){
        return "login";
    }
    @RequestMapping("/login")
    public String login(HttpSession session, String username, String password){

        session.setAttribute("userLoginInfo",username);
        return "main";
    }
    @RequestMapping("/goOut")
    public String login(HttpSession session){
        session.removeAttribute("userLoginInfo");
        System.out.println("session被移除");
        return "main";
    }
}
