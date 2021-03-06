package com.zsj.controller;

import com.zsj.Utils.MD5;
import com.zsj.Utils.yzm;
import com.zsj.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    @Qualifier("LoginServiceImpl")
    public LoginService loginService;
    @RequestMapping("tologin")
    public String tologin(){
        return "login";
    }
    @RequestMapping("cheak")
    public String longcheak(String username, String password,String yz, HttpSession session)  {
        password = MD5.getMd5(password);
        String yanzhengma = (String)session.getAttribute("randomcode_key");
        System.out.println(session.getAttribute("randomcode_key"));
        System.out.println("=========");
        String pwd = loginService.Loginfindpwd(username);
        System.out.println(pwd);
        String id = loginService.Loginfindpwd2(username);
        if(password.equals(pwd)){
            if(!yanzhengma.equals(yz)){
                session.setAttribute("error","验证码错误");
                return "redirect:/login/tologin";
            }
            session.setAttribute("userLoginInfo",username);
            session.setAttribute("userLoginInfoid",Integer.parseInt(id));
            session.removeAttribute("error");
            if(username.equals("zsjcll")){
                System.out.println("密码正确.是管理员");
                return "redirect:/admin_stu/emps?page=1";
            }
            else{
                System.out.println("密码正确");
                return "redirect:/stu/emps2?page=1";
            }
        }else{
            System.out.println("密码不对");
            session.setAttribute("error","用户不存在");
            return "redirect:/login/tologin";
        }
    }
    @RequestMapping("out")
    public String loginout(HttpSession session){
        session.removeAttribute("userLoginInfo");
        session.removeAttribute("userLoginInfoid");
        return "redirect:/stu/emps2?page=1";
    }
    @RequestMapping("toregiser")
    public String toregiset(){
        return "register";
    }
    @RequestMapping("registe")
    public String registe(String username, String password, HttpSession session){
        String password5 = MD5.getMd5(password);
        loginService.register(username,password5);

        return "redirect:/login/cheak?username="+username+"&password="+password;
    }
    @RequestMapping("tofind")
    public String tofind(){
        return "find";
    }
    @RequestMapping("toshoufei")
    public String toshoufei(){
        return "shoufei";
    }
    @RequestMapping(value="/checkCode")
    public void checkCode(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //设置相应类型,告诉浏览器输出的内容为图片
        response.setContentType("image/jpeg");
        //设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);

        yzm randomValidateCode = new yzm();

        try {
            randomValidateCode.getRandcode(request, response);//输出图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
