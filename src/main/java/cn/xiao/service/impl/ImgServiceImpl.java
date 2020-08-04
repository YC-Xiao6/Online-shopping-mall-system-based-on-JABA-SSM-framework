package cn.xiao.service.impl;

import cn.xiao.dao.ImgDao;
import cn.xiao.domain.Img;
import cn.xiao.service.ImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("imgService")
public class ImgServiceImpl implements ImgService {
    @Autowired
    private ImgDao imgDao;
    @Override
    public List<Img> findImg(int cid) {
        return imgDao.findImg(cid);
    }
}
