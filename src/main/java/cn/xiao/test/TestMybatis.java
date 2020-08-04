package cn.xiao.test;

import cn.xiao.dao.AccountDao;
import cn.xiao.dao.SellerDao;
import cn.xiao.dao.UserDao;
import cn.xiao.domain.Account;
import cn.xiao.domain.Seller;
import cn.xiao.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestMybatis {
    @Test
    public void run1() throws Exception {
        //加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建sqlsessionfactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //创建sqlsession对象
        SqlSession session = factory.openSession();
        //获取到代理对象
        UserDao dao = session.getMapper(UserDao.class);
        //查询信息
        List<User> list = dao.findAll();
        for (User user:list){
            System.out.println(user);
        }
        //释放资源
        session.close();
        in.close();
    }
    @Test
    public void run3() throws Exception {
        //加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建sqlsessionfactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //创建sqlsession对象
        SqlSession session = factory.openSession();
        //获取到代理对象
        SellerDao dao = session.getMapper(SellerDao.class);
        //查询信息
        Seller seller = dao.findSeller(1);
        System.out.println(seller);
        //释放资源
        session.close();
        in.close();
    }
    @Test
    public void run2() throws Exception {
        User user = new User();
        user.setUname("jkshfaj");
        user.setTelephone("11111666666");
        user.setPassword("215");
        //加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建sqlsessionfactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //创建sqlsession对象
        SqlSession session = factory.openSession();
        //获取到代理对象
        UserDao dao = session.getMapper(UserDao.class);
        //保存
        dao.register(user);
        //提交事务
        session.commit();
        //释放资源
        session.close();
        in.close();
    }
}
