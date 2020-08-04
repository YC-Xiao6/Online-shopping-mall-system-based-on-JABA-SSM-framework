package cn.xiao.dao;

import cn.xiao.domain.CarList;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ListDao {
    //查询商户信息
    @Select("SELECT * FROM car_list")
    public List<CarList> findAllByList();
}
