package com.zsj.service;

import com.zsj.dao.user.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginMapper loginMapper;

    public LoginMapper getLoginMapper() {
        return loginMapper;
    }

    public void setLoginMapper(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
    }

    @Override
    public int Logincheak(String username, String password) {
        return loginMapper.Logincheak(username,password);
    }

    @Override
    public String Loginfindpwd(String username) {
        return loginMapper.Loginfindpwd(username);
    }

    @Override
    public String Loginfindpwd2(String username) {
        return loginMapper.Loginfindpwd2(username);
    }
    @Override
    public int register(String username, String password) {
        return loginMapper.register(username,password);
    }

    @Override
    public String registerByusername(String username) {
        return loginMapper.registerByusername(username);
    }


}
