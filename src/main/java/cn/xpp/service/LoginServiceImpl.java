package cn.xpp.service;

import cn.xpp.dao.CommodityMapper;
import cn.xpp.dao.LoginMapper;
import cn.xpp.pojo.User;

public class LoginServiceImpl implements LoginSercice{

    private LoginMapper loginMapper;

    public void setLoginMapper(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
    }

    @Override
    public User getUser(String username, String password) {
        return loginMapper.getUser(username,password);
    }

    @Override
    public int register(String username, String password) {
        return loginMapper.register(username,password);
    }

    @Override
    public User getUserByName(String username) {
        return loginMapper.getUserByName(username);
    }
}
