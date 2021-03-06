package com.zsj.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zsj.dao.teacher.TeacherMapper;
import com.zsj.pojo.Student;
import com.zsj.pojo.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    public TeacherMapper getTeacherMapper() {
        return teacherMapper;
    }

    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public int addTeacher(Teacher teacher) {
        return teacherMapper.addTeacher(teacher);
    }

    @Override
    public int update(Teacher teacher) {
        return teacherMapper.update(teacher);
    }

    @Override
    public Teacher queryTeacherById(int userid) {
        return teacherMapper.queryTeacherById(userid);
    }

    @Override
    public int deleteTeacherById(int userid) {
        return teacherMapper.deleteTeacherById(userid);
    }

    @Override
    public List<Teacher> queryAllTaecher() {
        return teacherMapper.queryAllTaecher();
    }
    @Override
    public PageInfo<Teacher> getTeacherByPage(int page, int pageSize) {
        //开启分页支持
        PageHelper.startPage(page,pageSize);
        //调用dao层查询所有就行
        List<Teacher> list=teacherMapper.queryAllTaecher();
        //获取分页的相关信息
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }
}
