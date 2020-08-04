package cn.xiao.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ShopcarDao {
    //查询购物车数量
    @Select("SELECT COUNT(*) FROM car_buy WHERE uid = #{uid}")
    public int findCountByuid(int uid);
    //查询一辆车有几个数量
    @Select("SELECT id FROM car_buy WHERE uid = #{uid} AND cid = #{cid}")
    public List<Integer> findId(@Param("uid")int uid, @Param("cid")int cid);
    //查询uid下所有的cid
    @Select("SELECT cid FROM car_buy WHERE uid = #{uid}")
    public List<Integer> findCid(int uid);
    //加入购物车
    @Insert("insert into car_buy (uid,cid) values (#{uid},#{cid})")
    public void insertCar(@Param("uid")int uid, @Param("cid")int cid);
    //删除购物车
    @Delete("delete from car_buy WHERE id = #{uid} ")
    public void deleteCar(int id);
}
