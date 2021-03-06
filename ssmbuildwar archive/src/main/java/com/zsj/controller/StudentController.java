package com.zsj.controller;

import com.github.pagehelper.PageInfo;
import com.zsj.pojo.Student;
import com.zsj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("stu")
public class StudentController {
    @Autowired
    @Qualifier("StudentServiceImpl")
    public StudentService studentService;

    @RequestMapping("emps2")
    public String list2(int page,Model model){


        PageInfo<Student> pageInfo = studentService.getStudentByPage(page,15);

        model.addAttribute("pageInfo",pageInfo);
        return "main";
    }

    @RequestMapping("todetail")
    public String todateilpaper(int id,Model model){
        Student student =studentService.queryStudentById(id);
        model.addAttribute("Qstudent",student);
        return "detail";
    }

}
