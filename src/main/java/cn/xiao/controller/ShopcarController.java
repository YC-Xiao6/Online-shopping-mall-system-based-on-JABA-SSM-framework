package cn.xiao.controller;

import cn.xiao.domain.Detail;
import cn.xiao.domain.Shopcar;
import cn.xiao.service.ShopcarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/shopcar")
public class ShopcarController {
    @Autowired
    private ShopcarService shopcarService;
    @RequestMapping(value="/findCountByuid")
    @ResponseBody
    public int findCountByuid(HttpServletRequest request, HttpServletResponse response){
        Integer uid = (Integer) request.getSession().getAttribute("uid");
        return shopcarService.findCountByuid(uid);
    }
    @RequestMapping(value="/findShopcar")
    @ResponseBody
    public List<Detail> findShopcar(String suid){
        int uid = Integer.parseInt(suid);
        System.out.println("表现层：获取详情页面");
        List<Integer> cids = shopcarService.findCid(uid);
        List<Detail> cardetails = new ArrayList<>();
        for(int cid:cids){
            Detail detail=shopcarService.findCarDetail(cid);
            List<Integer> id = shopcarService.findId(uid, cid);
            detail.setId(id.get(0));
            cardetails.add(detail);
            System.out.println(detail);
        }
//        System.out.println(cardetails.size());
        return cardetails;
    }

    /**
     * 加入购物车
     * @param suid
     * @param scid
     */
    @RequestMapping(value="/insertCar")
    @ResponseBody
    public String insertCar(String suid, String scid){
        int uid = Integer.parseInt(suid);
        int cid = Integer.parseInt(scid);
        shopcarService.insertCar(uid,cid);
        return "success";
    }
    @RequestMapping(value="/deleteCar")
    @ResponseBody
    public String deleteCar(String sid){
        int id = Integer.parseInt(sid);
        shopcarService.deleteCar(id);
        return "success";
    }

}
