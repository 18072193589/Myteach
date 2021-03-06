package com.zsj.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Teacher {
    int userid;
    String t_name;
    String t_school;
    String free_time;
    String zhuanye;
    String gaozhong;
    String detail;
    String subject;
}
