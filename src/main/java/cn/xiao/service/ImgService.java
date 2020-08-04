package cn.xiao.service;

import cn.xiao.domain.Img;

import java.util.List;

public interface ImgService {
    public List<Img> findImg(int cid);
}
