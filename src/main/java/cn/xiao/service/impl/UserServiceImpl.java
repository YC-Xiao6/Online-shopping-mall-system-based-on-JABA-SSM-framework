package cn.xiao.service.impl;

import cn.xiao.dao.AccountDao;
import cn.xiao.dao.UserDao;
import cn.xiao.domain.Account;
import cn.xiao.domain.Seller;
import cn.xiao.domain.User;
import cn.xiao.service.AccountService;
import cn.xiao.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//交给IOC容器处理
@Service("userService" )
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public List<User> findAll() {
        System.out.println("业务层：查询所有的账户");
        return userDao.findAll();
    }

    @Override
    public User findOne(int uid) {
        return userDao.findOne(uid);
    }

    @Override
    public User findTel(String tel) {
        return userDao.findTel(tel);
    }


    public void register(User user) {
        System.out.println("业务层：保存账户");
        userDao.register(user);
    }

    @Override
    public User login(String telephone, String password) {
        User user = null;
        user=userDao.login(telephone, password);
        return user;
    }
}
