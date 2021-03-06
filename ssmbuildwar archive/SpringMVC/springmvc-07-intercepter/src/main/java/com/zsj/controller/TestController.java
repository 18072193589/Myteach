package com.zsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/t1")
    public String test(){
        System.out.println("testcontroller的test方法执行了");
        return "ok";
    }
}
