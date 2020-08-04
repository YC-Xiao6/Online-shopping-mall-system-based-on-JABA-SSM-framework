package cn.xiao.service;

import cn.xiao.domain.CarList;

import java.util.List;

public interface ListService {
    //查询列表页信息
    public List<CarList> findAllByList();
}
