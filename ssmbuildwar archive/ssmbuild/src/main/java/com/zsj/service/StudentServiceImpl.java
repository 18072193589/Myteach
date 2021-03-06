package com.zsj.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zsj.dao.admin.StudentMapper;
import com.zsj.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentMapper studentMapper;

    public StudentMapper getStudentMapper() {
        return studentMapper;
    }

    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    @Override
    public int addStudent(Student student) {
        return studentMapper.addStudent(student);
    }

    @Override
    public int deleteStudentById(int id) {
        return studentMapper.deleteStudentById(id);
    }

    @Override
    public int updateStudent(Student student) {
        return studentMapper.updateStudent(student);
    }

    @Override
    public Student queryStudentById(int id) {
        return studentMapper.queryStudentById(id);
    }

    @Override
    public List<Student> queryStudentBySubject(String subject) {
        return studentMapper.queryStudentBySubject(subject);
    }

    @Override
    public List<Student> queryStudentBycity(String city) {
        return studentMapper.queryStudentBycity(city);
    }

    @Override
    public List<Student> queryStudentByplot(String plot) {
        return studentMapper.queryStudentByplot(plot);
    }

    @Override
    public List<Student> queryAllStudent() {
        return studentMapper.queryAllStudent();
    }

    @Override
    public PageInfo<Student> getStudentByPage(int page, int pageSize) {
        //开启分页支持
        PageHelper.startPage(page,pageSize);
        //调用dao层查询所有就行
        List<Student> list=studentMapper.queryAllStudent();
        //获取分页的相关信息
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }


}
