package com.zsj.service;

import com.github.pagehelper.PageInfo;
import com.zsj.pojo.Student;
import com.zsj.pojo.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherService {
    //增加一个简历
    int addTeacher(Teacher teacher);
    //修改以一个简历
    int update(Teacher teacher);
    //根据id查询简历
    Teacher queryTeacherById(int userid);
    //删除一个简历
    int deleteTeacherById(int userid);
    //查询所有简历
    List<Teacher> queryAllTaecher();
    //开启分页
    PageInfo<Teacher> getTeacherByPage(int page, int pageSize);
}
