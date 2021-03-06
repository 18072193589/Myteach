package com.zsj.controller.admin;

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
@RequestMapping("admin_stu")
public class StudentController_ad {
    @Autowired
    @Qualifier("StudentServiceImpl")
    public StudentService studentService;
    @RequestMapping("/allstudent")
    public String list(Model model){
        List<Student> lists = studentService.queryAllStudent();
        model.addAttribute("list",lists);
        return "admin/allstudent";
    }
    @RequestMapping("toaddstudent")
    public String toadd(){
        return "admin/addstudent";
    }
    @RequestMapping("addstudent")
    public String add(Student student){
        System.out.println("=========增加方法执行"+student);
        studentService.addStudent(student);
        return "redirect:/admin_stu/emps?page=1";
    }
    @RequestMapping("emps")
    public String list1(int page,Model model){


        PageInfo<Student> pageInfo = studentService.getStudentByPage(page,15);

        model.addAttribute("pageInfo",pageInfo);
        return "admin/allstudent";
    }

    @RequestMapping("/toUpdate")
    public String toUpdatepaper(int id,Model model){
        Student student = studentService.queryStudentById(id);
        model.addAttribute("Qstudent",student);
        return "admin/updatestudent";
    }
    @RequestMapping("Update")
    public String updatepaper(Student student){
        studentService.updateStudent(student);
        return "redirect:/admin_stu/emps?page=1";
    }
    @RequestMapping("Datele")
    public String daletepaper(int id){
        studentService.deleteStudentById(id);
        return "redirect:/admin_stu/emps?page=1";
    }
}