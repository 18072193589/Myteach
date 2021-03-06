package com.zsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller//代表这个类被spring接管，被这个注解的类，中所有方法
//如果返回值是string，并且有具体页面可以跳转，就会被视图解析器解析
public class ControllerTest2 {
    @RequestMapping("/t2")
    public String test1(Model model){
        model.addAttribute("msg","辉夜姬");
        return "admin/test";
    }
    @RequestMapping("/t3")
    public String test3(Model model){
        model.addAttribute("msg","御馔津");
        return "admin/test";
    }
}
