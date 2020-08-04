package cn.xiao.dao;

import cn.xiao.domain.Account;
import cn.xiao.domain.Seller;
import cn.xiao.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 账户dao接口
 */
public interface UserDao {
    //查询所有账户信息
    @Select("select * from user")
    public List<User> findAll();
    //通过uid查询账户信息
    @Select("select * from user where uid=#{uid}")
    public User findOne(int uid);
    //通过tel查询账户信息
    @Select("select * from user where telephone=#{tel}")
    public User findTel(String tel);
    //保存账户信息
    @Insert(value="insert into user (telephone,uname,password) values (#{telephone},#{uname},#{password})")
    public void register(User user);
    //登录是否成功
    @Select("select * from user where telephone = #{telephone} and  password = #{password}")
    public User login(@Param("telephone")String telephone, @Param("password")String password);
}
