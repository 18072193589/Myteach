package com.zsj.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private int studentID;
    private String subject_s;
    private String sex_s;
    private String city;
    private String plot;
    private String address;
    private String condition_s;
    private String need_sex;
    private String need_work;
    private String salary;
    private String date;
}
