package cn.xiao.service.impl;

import cn.xiao.dao.SellerDao;
import cn.xiao.domain.Seller;
import cn.xiao.service.SellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("sellerService")
public class SellerServiceImpl implements SellerService {
    @Autowired
    private SellerDao sellerDao;

    @Override
    public Seller findSeller(int sid) {
        System.out.println("业务层：查询商户信息");
        return sellerDao.findSeller(sid);

    }
}
