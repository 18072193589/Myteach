package com.zsj.service;

import com.github.pagehelper.PageInfo;
import com.zsj.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);

    int deleteStudentById(int id);

    int updateStudent(Student student);

    Student queryStudentById(int id);

    List<Student> queryStudentBySubject(String subject);

    List<Student> queryStudentBycity(String city);

    List<Student> queryStudentByplot(String plot);

    List<Student> queryAllStudent();
    //分页查询的方法
    PageInfo<Student> getStudentByPage(int page,int pageSize);
}
