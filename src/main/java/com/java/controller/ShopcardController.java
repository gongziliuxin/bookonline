package com.java.controller;

import com.github.pagehelper.PageInfo;
import com.java.bean.Addres;
import com.java.bean.Msg;
import com.java.bean.Shopcard;
import com.java.service.ShopcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ShopcardController {

    @Autowired
    ShopcardService shopcardService;


    /*
    * 加入购物车
    * */
    @ResponseBody
    @RequestMapping(value="/joinShopcard",method = RequestMethod.POST )
    public Msg joinShopCard(String bId,String cId,String scNum){

        //查询购物车中是否已有这本书,如果存在就修改他的数量
       Shopcard shopcard=new Shopcard();
//        System.out.println(bId+"|"+cId+"|"+scNum);

       if(shopcardService.selectByBid(Integer.parseInt(bId))==null ){
           shopcard.setCid(Integer.parseInt(cId));
           shopcard.setBid(Integer.parseInt(bId));
           shopcard.setScNum(Integer.parseInt(scNum));
           shopcardService.saveIntoShopcard(shopcard);

       }else {
           // Shopcard shopcard=new Shopcard();
           shopcard=shopcardService.selectByBid(Integer.parseInt(bId));
//           System.out.println(shopcard.getScNum());
           Integer scNum1 = shopcard.getScNum()+Integer.parseInt(scNum);
//           System.out.println(bId+"|"+cId+"|"+scNum1);
           shopcard.setCid(Integer.parseInt(cId));
           shopcard.setBid(Integer.parseInt(bId));

           shopcard.setScNum(scNum1);
           shopcardService.updateScnum(shopcard);
       }
       return Msg.success();
    }

    /*
    * 跳转到购物车页面
    * */

    @RequestMapping(value = "/myBuyCar",method = RequestMethod.GET)
    public String toMyBuyCar(){
        return "shopcard";
    }


    @RequestMapping(value = "/shopcard",method = RequestMethod.GET)
    @ResponseBody
    public Msg getCarInfo(){
        List<Shopcard> shopcard= shopcardService.getAll();
        PageInfo page = new PageInfo(shopcard, 1);
        return Msg.success().add("pageInfo", page);
    }

    @ResponseBody
    @RequestMapping(value = "/updatascNum",method = RequestMethod.PUT)
    public Msg updatashopcard(String cid,String bid,String scNum){
       System.out.println(cid+"|"+bid+"|"+scNum);
        Shopcard shopcard = new Shopcard();
        shopcard.setScNum(Integer.parseInt(scNum));
        shopcard.setBid(Integer.parseInt(bid));
        shopcard.setCid(Integer.parseInt(cid));
        shopcardService.updateScnum(shopcard);
        return Msg.success();
    }

    /*
    * 删除购物车
    * */
    @RequestMapping(value = "/delshopcarbook/{ids}",method = RequestMethod.POST)
    @ResponseBody
    public void delshopcarbook(@PathVariable("ids")String ids){
        String[] id=ids.split("-");
        Shopcard shopcard = new Shopcard();
        Integer cid = Integer.parseInt(id[0]);
        Integer bid = Integer.parseInt(id[1]);
        System.out.println("cid:"+cid);
        System.out.println("bid:"+bid);
        shopcardService.delshopcarbook(cid,bid);
    }



    @RequestMapping("/submit/{ids}")
    public String toOrder(@PathVariable("ids")String ids){
        return "submit";
    }
}
