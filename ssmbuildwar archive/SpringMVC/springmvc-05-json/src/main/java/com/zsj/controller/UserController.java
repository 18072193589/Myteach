package com.zsj.controller;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zsj.pojo.User;
import com.zsj.utils.jsonUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.crypto.Data;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
public class UserController {
    @RequestMapping("/j1")
    @ResponseBody//不会走视图解析器.直接返回字符串
    public String json1() throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        //创建一个对象
        User user = new User("朱身居",3,"难");

        String str = mapper.writeValueAsString(user);
        return str;
    }
    @RequestMapping("/j2")
    @ResponseBody//不会走视图解析器.直接返回字符串
    public String json2() throws JsonProcessingException {
        //创建一个对象
        Date date = new Date();
        return jsonUtils.getjson(date,"yyyy-MM-dd HH:mm:ss");
    }
    @RequestMapping("/j3")
    @ResponseBody//不会走视图解析器.直接返回字符串
    public String json3() throws JsonProcessingException {
        //创建一个对象
        List<User> userList = new ArrayList<User>();
        User user1 = new User("直升机",1,"女");
        User user2 = new User("陈珞珞",77,"女");
        userList.add(user1);
        userList.add(user2);
        return jsonUtils.getjson(userList);
    }
    @RequestMapping("/j4")
    @ResponseBody//不会走视图解析器.直接返回字符串
    public String json4() throws JsonProcessingException {
        //创建一个对象
        List<User> userList = new ArrayList<User>();
        User user1 = new User("直升机",1,"女");
        User user2 = new User("陈珞珞",77,"女");
        userList.add(user1);
        userList.add(user2);
        return JSON.toJSONString(userList);
    }
}
