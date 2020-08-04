package cn.xiao.controller;

import cn.xiao.domain.Seller;
import cn.xiao.service.SellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 商户管理
 */
@Controller
@RequestMapping("/seller")
public class SellerController {
    @Autowired
    private SellerService sellerService;
    public void findSeller(int sid){

    }

}

