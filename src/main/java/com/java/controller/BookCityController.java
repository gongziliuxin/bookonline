package com.java.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.bean.Books;
import com.java.bean.Customs;
import com.java.bean.Msg;
import com.java.service.BooksService;
import com.java.service.CustomsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class BookCityController {

    @Autowired
    BooksService booksService;

    @Autowired
    CustomsService customsService;


    /*
    * 跳转到商城主界面
    * */
    @RequestMapping(value = "/bookcityinto")
    public String bookCityInto(HttpSession httpSession){
        //httpSession.setAttribute("custom",null);
        return "bookcity_index";
    }

    @RequestMapping(value = "/category/{value}")
    public String bookTypeSelect(){
        return "category";
    }

    /*
    * 根据分类查询
    * /categoryList/category=?
    * 热门查询
    * 所有热门查询
    * /categoryList/hot=all
    * 查询热门书籍的第前?名
    * /categoryList/hot=?
    * 首页推荐
    * /categoryList/hot=5
    * 自己查询
    * /categoryList/select=?
    * */

    @RequestMapping(value = "/categoryList/{value}",method = RequestMethod.GET)
    @ResponseBody
    public Msg bookTypeSelectShow(@PathVariable("value")String value,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
        //System.out.println("=》"+value);
        List<Books> books = booksService.selectByValue(value);


        PageHelper.startPage(pn, books.size());
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(books, 5);
        return Msg.success().add("pageInfo", page);
    }

    /*
    * 跳转到用户登录界面
    * */
    @RequestMapping("/customLogin")
    public String customLogin(){
        return "customLogin";
    }


    /*
    * 跳转到用户注册界面
    * */
    @RequestMapping("/customRegister")
    public String customRegistor(){
        return "customRegister";
    }


    /*
    * 跳转到书籍详情页面
    * */
    @RequestMapping("/bookshow/{value}")
    public String bookShow(){
        return "bookshow";
    }

    @RequestMapping(value = "/bookSelect/{value}",method = RequestMethod.POST)
    @ResponseBody
    public Msg bookselect(@PathVariable("value")String value){
        List<Books> books = booksService.selectByValue(value);
        PageInfo page = new PageInfo(books, 5);
        return Msg.success().add("pageInfo", page);
    }

/*
* 用户登录 查询用户的电话和用户名是否存在，并将信息保存在session中
* 如果用户名存在就存入，如果不存在，就将电话作为用户名
* */

    @RequestMapping(value = "/customTelSelect/{tel}",method = RequestMethod.POST)
    @ResponseBody
    public Msg customTelSelect(@PathVariable("tel")String tel, HttpSession httpSession, HttpServletRequest request){
        List<Customs> customs = customsService.selectByTel(tel);
        PageInfo page = new PageInfo(customs, 1);
        if(!customs.isEmpty()){
            String cNickname=customs.get(0).getcNickname();
            Integer cId=customs.get(0).getcId();
            System.out.println("cNickname:"+cNickname);
            httpSession= request.getSession(true);
            String cTel=customs.get(0).getcTel();
            if(!(cNickname==null)){
                httpSession.setAttribute("custom",cNickname);
                httpSession.setAttribute("customId",cId);
            }else {
                httpSession.setAttribute("custom",cTel);
                httpSession.setAttribute("customId",cId);
            }
        }else {
            return Msg.fail();
        }
        return Msg.success().add("pageInfo", page);
    }

    @RequestMapping(value = "/customRegister",method = RequestMethod.POST)
    @ResponseBody
    public Msg customRegister(Customs customs){
        customsService.insertCustom(customs);
        return Msg.success();
    }

    /*
    * 用户注册
    * 通过电话号码查询用户是否存在
    * */
    @ResponseBody
    @RequestMapping(value = "/customTel/{tel}",method = RequestMethod.POST)
    public  Msg customTel(@PathVariable("tel") String tel){
        List<Customs> customs = customsService.selectByTel(tel);
        PageInfo page = new PageInfo(customs, 1);
        return Msg.success().add("pageInfo", page);
    }

    /*
    * 跳转到我的账户页面
    * */
    @RequestMapping("/myAccount")
    public String myAccount(){
        return "myAccount";
    }

    /*
    * 查询用户用户名
    * */
    @RequestMapping(value = "/selectNickName/{nickname}",method = RequestMethod.POST)
    @ResponseBody
    public Msg customNickName(@PathVariable("nickname")String nickname){
        List<Customs> customs = customsService.selectByNickname(nickname);
        PageInfo page = new PageInfo(customs, 1);
        return Msg.success().add("pageInfo", page);
    }


}
