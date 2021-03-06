package com.zsj.controller.admin;

import com.github.pagehelper.PageInfo;
import com.zsj.pojo.Teacher;
import com.zsj.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin_t")
public class TeacherController_ad {
    @Autowired
    @Qualifier("TeacherServiceImpl")
    public TeacherService teacherService;

    @RequestMapping("add")
    public String add(Teacher teacher){
        teacherService.addTeacher(teacher);
        return "redirect:/admin_t/emps?page=1";
    }
    @RequestMapping("emps")
    public String list1(int page, Model model){


        PageInfo<Teacher> pageInfo = teacherService.getTeacherByPage(page,15);

        model.addAttribute("pageInfo",pageInfo);
        return "admin/teacher";
    }
    @RequestMapping("toupdate")
    public String toupdate(int id,Model model){
        Teacher teacher = teacherService.queryTeacherById(id);
        model.addAttribute("Qteacher",teacher);
        return "admin/update_teacher";
    }
    @RequestMapping("update")
    public String update(Teacher teacher){
        teacherService.update(teacher);
        System.out.println(teacher);
        return "redirect:/admin_t/emps?page=1";
    }
    @RequestMapping("drop")
    public String drop(int id){
        teacherService.deleteTeacherById(id);
        return "redirect:/admin_t/emps?page=1";
    }
}
