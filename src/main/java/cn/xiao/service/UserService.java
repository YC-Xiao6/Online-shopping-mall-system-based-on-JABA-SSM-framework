package cn.xiao.service;

import cn.xiao.domain.Account;
import cn.xiao.domain.Seller;
import cn.xiao.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    //查询所有账户信息
    public List<User> findAll();

    //查询一个账户
    public User findOne(int uid);
    //注册是否有重复手机
    public User findTel(String tel);
    //保存账户信息
    public void register(User user);
    //登录账户
    public User login(String telephone,String password);
}
