package cn.xiao.service;

import cn.xiao.domain.Detail;
import cn.xiao.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ShopcarService {
    //查询购物车数量
    public int findCountByuid(int uid);
    //查询单车数量
    public List<Integer> findId(int uid, int cid);
    //查询购物车的主人
    public User findCarUser(int uid);
    //查询购物车的内容
    public Detail findCarDetail(int cid);
    //查询uid下所有的cid
    public List<Integer> findCid(int uid);
    //加入购物车
    public void insertCar(int uid,int cid);
    //删除购物车
    public void deleteCar(int id);
}
