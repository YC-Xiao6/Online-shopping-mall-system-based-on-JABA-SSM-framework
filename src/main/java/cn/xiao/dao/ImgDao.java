package cn.xiao.dao;

import cn.xiao.domain.Img;
import cn.xiao.domain.Seller;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ImgDao {
    //查询详情页图片信息
    @Select("SELECT * FROM car_img WHERE cid=#{cid}")
    public List<Img> findImg(int cid);
}
