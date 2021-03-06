package com.zsj.dao.user;

import org.apache.ibatis.annotations.Param;

public interface LoginMapper {
    int Logincheak(@Param("username") String username,@Param("password") String password);
    //通过账户查找密码
    String Loginfindpwd(@Param("username") String username);
    //注册
    int register(@Param("username") String username,@Param("password") String password);
    //查找账户是否存在
    String registerByusername(@Param("username") String username);
    //通过账号查找id
    String Loginfindpwd2(@Param("username") String username);
}
