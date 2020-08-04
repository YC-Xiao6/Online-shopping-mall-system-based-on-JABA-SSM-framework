package cn.xiao.controller;

import cn.xiao.domain.CarList;
import cn.xiao.domain.Detail;
import cn.xiao.service.DetailService;
import cn.xiao.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/detail")
public class DetailController {
    @Autowired
    private DetailService detailService;
    @RequestMapping(value="/findDetail")
    @ResponseBody
    public Detail findAllByDetail(String cid){
        int id = Integer.parseInt(cid);
        System.out.println("表现层：获取详情页面");
        Detail detail = detailService.findDetail(id);
        return detail;
    }
}
