package com.zsj.dao.teacher;

import com.zsj.pojo.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {
    //增加一个简历
    int addTeacher(Teacher teacher);
    //修改以一个简历
    int update(Teacher teacher);
    //根据id查询简历
    Teacher queryTeacherById(@Param("userid") int userid);
    //删除一个简历
    int deleteTeacherById(@Param("userid")int userid);
    //查询所有简历
    List<Teacher>queryAllTaecher();
}
