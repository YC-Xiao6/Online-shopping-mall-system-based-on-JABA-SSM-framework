package cn.xiao.test;

import cn.xiao.domain.*;
import cn.xiao.service.*;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.List;

public class TestSpring {

    @Test
    public void run1(){
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        UserService as = (UserService) ac.getBean("userService");
        //调用方法
//        List<Seller> users = as.findAll1();
//        for(Seller user:users){
//            System.out.println(user);
//        }
    }
    @Test
    public void run2(){
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        UserService as = (UserService) ac.getBean("userService");
        //调用方法
        User user = as.findOne(1);
        System.out.println(user);
    }
    @Test
    public void run3(){
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        UserService as = (UserService) ac.getBean("userService");
        //调用方法
        User user = as.login("1111111111", "123");
        System.out.println(user);
    }
    @Test
    public void run4(){
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        SellerService as = (SellerService) ac.getBean("sellerService");
        //调用方法
        Seller seller = as.findSeller(1);
        System.out.println(seller);
    }
    //测试列表
    @Test
    public void run5(){
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        ListService as = (ListService) ac.getBean("listService");
        //调用方法
        List<CarList> carList = as.findAllByList();
        for (CarList list :carList){
            System.out.println(list);
        }


    }
    //测试img
    @Test
    public void run6() {
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        ImgService as = (ImgService) ac.getBean("imgService");
        //调用方法
        List<Img> imgs = as.findImg(1);
        for (Img img : imgs) {
            System.out.println(img.getPic());
        }
    }

    /**
     * 测试detail页面
     */
    @Test
    public void run7() {
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        DetailService as = (DetailService) ac.getBean("detailService");
        //调用方法
        Detail detail = as.findDetail(1);
        System.out.println(detail);
        List<Img> img = detail.getImg();
        for (Img imgs : img) {
            System.out.println(imgs.getPic());
        }
        System.out.println(detail.getSeller().getSname());
    }

    /**
     * 测试购物车页面
     */
    @Test
    public void run8() {
        //加载spring配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        ShopcarService as = (ShopcarService) ac.getBean("shopcarService");
        //调用方法
        List<Integer> cids = as.findCid(1);
        List<Detail> cardetails = new ArrayList<>();
        for(int cid:cids){
            cardetails.add(as.findCarDetail(cid));
            System.out.println(cid);
        }
        for (Detail detail:cardetails){
            System.out.println(detail);
        }
    }
}
