package com.zsj.service;

import org.apache.ibatis.annotations.Param;

public interface LoginService {
    int Logincheak(String username,String password);

    String Loginfindpwd(String username);
    //注册
    int register(String username,String password);
    //查找账户是否存在
    String registerByusername(String username);



    String Loginfindpwd2(String username);
}
