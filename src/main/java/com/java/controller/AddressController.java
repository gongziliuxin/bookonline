package com.java.controller;

import com.java.bean.Addres;
import com.java.bean.Msg;
import com.java.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AddressController {

    @Autowired
    AddressService addressService;

    @RequestMapping(value ="/saveaddress",method = RequestMethod.POST)
    @ResponseBody
    public String saveAddress(Integer cId, String aName, String aTel, String aAddr){
        System.out.println(cId+"|"+aName+"|"+aTel+"|"+aAddr);
        //查询当前用户地址表是否存在其他地址信息，如果没有，将地址设为默认值
        Addres address= new Addres();

        if(addressService.selectByCid(cId).isEmpty() ){
            address.setcId(cId);
            address.setaName(aName);
            address.setaTel(aTel);
            address.setaAddr(aAddr);
            address.setaDefault("是");
            addressService.saveAddress(address);

        }else {
            address.setcId(cId);
            address.setaName(aName);
            address.setaAddr(aAddr);
            address.setaTel(aTel);
            address.setaDefault("否");
            addressService.saveAddress(address);
        }
        return "myAccount";
    }
    /*
    * 获取地址
    * */

    @ResponseBody
    @RequestMapping(value ="/getAddress/{cId}",method = RequestMethod.POST)
    public Msg getAddresses(@PathVariable("cId")String cId){
        List<Addres> addresList=addressService.selectByCid(Integer.parseInt(cId));
        //System.out.println(addresList.size());
        return Msg.success().add("addressList",addresList);

    }
    /*
    * 删除地址
    * */


    @RequestMapping(value = "/deladdress/{aId}")
    @ResponseBody
    public  String delAddress(@PathVariable("aId")String aId){
        addressService.delAddress(Integer.parseInt(aId));
        return "/myAccount";
    }
    /*
    * 根据用户id和默认地址查询
    * */
    @ResponseBody
    @RequestMapping(value = "/getaddrdefault/{cId}",method = RequestMethod.GET)
    public Msg getAddressDefault(@PathVariable("cId")String cId){
        Addres addres = addressService.selectByCidDefalut(Integer.parseInt(cId));
        return  Msg.success().add("address",addres);

    }
}



