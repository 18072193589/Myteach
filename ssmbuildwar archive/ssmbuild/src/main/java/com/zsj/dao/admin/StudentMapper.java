package com.zsj.dao.admin;

import com.zsj.pojo.Books;
import com.zsj.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    //增加一个学员 !
    int addStudent(Student student);
    //删除一个学员 !
    int deleteStudentById(@Param("studentID") int id);
    //更新一个学员 !
    int updateStudent(Student student);
    //根据id查询!
    Student queryStudentById(@Param("studentId") int id);
    //根据学科查询(模糊查询)!
    List<Student> queryStudentBySubject(@Param("subject_s") String subject);
    //根据城市查询!
    List<Student> queryStudentBycity(@Param("city") String city);
    //根据地区查询
    List<Student> queryStudentByplot(@Param("plot") String plot);
    //查询所有学员
    List<Student> queryAllStudent();

}
