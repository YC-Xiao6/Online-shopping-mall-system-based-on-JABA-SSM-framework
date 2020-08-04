package cn.xiao.controller;

import cn.xiao.domain.CarList;
import cn.xiao.service.ListService;
import cn.xiao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
@RequestMapping(value="/list")

public class ListController {
    @Autowired
    private ListService listService;
    @RequestMapping(value="/findList")
    @ResponseBody
    public List<CarList> findAllByList(){
        System.out.println("表现层：获取所有列表");
        List<CarList> lists = listService.findAllByList();
        return lists;
    }

}
