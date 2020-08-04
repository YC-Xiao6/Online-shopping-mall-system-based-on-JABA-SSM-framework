package cn.xiao.dao;

import cn.xiao.domain.Detail;
import org.apache.ibatis.annotations.Select;

public interface DetailDao {
    //根据cid查询车辆
    @Select("select * from car_detail where cid=#{cid}")
    public Detail findDetail(int cid);
}
