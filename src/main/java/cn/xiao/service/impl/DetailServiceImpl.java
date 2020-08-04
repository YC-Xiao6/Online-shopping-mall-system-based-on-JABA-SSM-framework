package cn.xiao.service.impl;

import cn.xiao.dao.DetailDao;
import cn.xiao.dao.ImgDao;
import cn.xiao.dao.SellerDao;
import cn.xiao.domain.Detail;
import cn.xiao.domain.Img;
import cn.xiao.domain.Seller;
import cn.xiao.service.DetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("detailService")
public class DetailServiceImpl implements DetailService {
    @Autowired
    private DetailDao detailDao;
    @Autowired
    private SellerDao sellerDao;
    @Autowired
    private ImgDao imgDao;
    @Override
    public Detail findDetail(int cid) {
        Detail detail = detailDao.findDetail(cid);
        Seller seller = sellerDao.findSeller(detail.getSid());
        List<Img> img = imgDao.findImg(cid);
        detail.setSeller(seller);
        detail.setImg(img);
        return detail;
    }
}
