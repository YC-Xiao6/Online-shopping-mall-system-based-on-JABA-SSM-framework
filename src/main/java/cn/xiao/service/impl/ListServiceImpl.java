package cn.xiao.service.impl;

import cn.xiao.dao.ListDao;
import cn.xiao.domain.CarList;
import cn.xiao.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("listService")
public class ListServiceImpl implements ListService {
    @Autowired
    private ListDao listDao;
    @Override
    public List<CarList> findAllByList() {
        return listDao.findAllByList();
    }
}
