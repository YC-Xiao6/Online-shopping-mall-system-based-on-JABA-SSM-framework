package cn.xiao.dao;

import cn.xiao.domain.Seller;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SellerDao {
    //查询商户信息
    @Select("SELECT * FROM seller WHERE sid=#{sid}")
    public Seller findSeller(int sid);
}
