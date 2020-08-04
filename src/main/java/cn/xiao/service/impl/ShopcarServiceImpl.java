package cn.xiao.service.impl;

import cn.xiao.dao.DetailDao;
import cn.xiao.dao.SellerDao;
import cn.xiao.dao.ShopcarDao;
import cn.xiao.dao.UserDao;
import cn.xiao.domain.Detail;
import cn.xiao.domain.Seller;
import cn.xiao.domain.User;
import cn.xiao.service.ShopcarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("shopcarService")
public class ShopcarServiceImpl implements ShopcarService {
    @Autowired
    private ShopcarDao shopcarDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private DetailDao detailDao;
    @Autowired
    private SellerDao sellerDao;

    @Override
    public int findCountByuid(int uid) {
        return shopcarDao.findCountByuid(uid);
    }

    @Override
    public List<Integer> findId(int uid, int cid) {
        return shopcarDao.findId(uid,cid);
    }
    //查询购物车的主人
    @Override
    public User findCarUser(int uid) {
        return userDao.findOne(uid);
    }

    //查询车的内容
    @Override
    public Detail findCarDetail(int cid) {
        Detail detail= detailDao.findDetail(cid);
        Seller seller = sellerDao.findSeller(detail.getSid());
        detail.setSeller(seller);
        return detail;
    }

    @Override
    public List<Integer> findCid(int uid) {
        return shopcarDao.findCid(uid);
    }

    @Override
    public void insertCar(int uid, int cid) {
        shopcarDao.insertCar(uid,cid);
        System.out.println("业务层：添加数据");
    }

    @Override
    public void deleteCar(int id) {
        shopcarDao.deleteCar(id);
        System.out.println("业务层：删除数据");
    }
}
