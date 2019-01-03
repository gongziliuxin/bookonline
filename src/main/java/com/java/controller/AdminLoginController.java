package com.java.controller;

import com.github.pagehelper.PageInfo;
import com.java.bean.Admin;
import com.java.bean.Msg;
import com.java.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class AdminLoginController {

    @Autowired
    AdminService adminService;
    /*
    * 查询管理员信息，若存在跳转到主页面
    * */
    @RequestMapping(value = "/login/{name}")
    public String login(@PathVariable("name")String name){
        return "home";
    }

    @RequestMapping(value = "/selectAdminName/{name}",method = RequestMethod.POST)
    @ResponseBody
    public Msg selectAdminName(@PathVariable("name")String name){
        List<Admin>admin=adminService.selectName(name);
        PageInfo page = new PageInfo(admin, 1);
        return Msg.success().add("pageInfo", page);
    }

}
