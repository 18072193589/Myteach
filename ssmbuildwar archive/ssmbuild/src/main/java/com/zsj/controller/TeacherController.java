package com.zsj.controller;

import com.github.pagehelper.PageInfo;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.zsj.pojo.Teacher;
import com.zsj.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("tea")
public class TeacherController {
    @Autowired
    @Qualifier("TeacherServiceImpl")
    public TeacherService teacherService;
    @RequestMapping("toadd")
    public String toadd(int id, Model model){
        model.addAttribute("userid",id);
        return "teacher_regist";
    }
    @RequestMapping("toaddsx")
    public String toaddsx(int id){

        System.out.println("当前的id:===============");
        System.out.println(id);
            if(teacherService.queryTeacherById(id)!=null){
                return "redirect:/tea/toedit?id="+id;
            }else{
                return "redirect:/tea/toadd?id="+id;
            }

    }
    @RequestMapping("emps")
    public String list1(int page, Model model){


        PageInfo<Teacher> pageInfo = teacherService.getTeacherByPage(page,15);

        model.addAttribute("pageInfo",pageInfo);
        return "/allteacher";
    }
    @RequestMapping("add")
    public String add(Teacher teacher){
        teacherService.addTeacher(teacher);
        return "redirect:/tea/emps?page=1";
    }
    @RequestMapping("todeatil")
    public String todeatil(int id,Model model){
        Teacher teacher = teacherService.queryTeacherById(id);
        model.addAttribute("Qteacher",teacher);
        return "teacher_deatil";
    }
    @RequestMapping("toedit")
    public String toedit(int id,Model model){
        Teacher teacher = teacherService.queryTeacherById(id);
        model.addAttribute("Qteacher",teacher);
        return "teacher_edit";
    }
    @RequestMapping("edit")
    public String edit(Teacher teacher){
        System.out.println("进入更改=============");
        System.out.println("教师信息:"+teacher);
        teacherService.update(teacher);
        return "redirect:/tea/emps?page=1";
    }

}
