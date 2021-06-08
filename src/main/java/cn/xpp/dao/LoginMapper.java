package cn.xpp.dao;

import cn.xpp.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface LoginMapper {

    //用户登录
    public User getUser(@Param("username") String username,@Param("password") String password);

    //用户注册
    public int register(@Param("username") String username,@Param("password") String password);

    //判断用户是否存在
    public User getUserByName(@Param("username") String username);
}
