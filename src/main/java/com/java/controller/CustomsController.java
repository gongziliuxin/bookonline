package com.java.controller;

import com.github.pagehelper.PageInfo;
import com.java.bean.Customs;
import com.java.bean.Msg;
import com.java.service.CustomsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/*
* URI:
* /custom/{id} GET 查询顾客信息
* /custom  post 保存新增顾客信息
* /custom/{id} PUT 修改顾客信息
* /custom/{id} DELETE 删除顾客信息
* */

@Controller
public class CustomsController {
    @Autowired
    CustomsService customsService;

    @RequestMapping("/custom")
    public String customs(){
        return "customList";
    }


    /*
    *
    * 保存新增顾客会员信息
    * */
    @RequestMapping(value="/custom", method =RequestMethod.POST)
    @ResponseBody
    public Msg saveCustom(Customs custom){
        customsService.saveCustom(custom);
        return Msg.success();
    }
    /*
    * 根据id查询顾客信息
    * */
    @RequestMapping(value="/custom/{id}",method=RequestMethod.GET)
    @ResponseBody
    public Msg getCustom(@PathVariable("id")Integer id){

        Customs custom = customsService.getCustom(id);
        return Msg.success().add("custom", custom);
    }
    	 /*
          *如果直接发送ajax=PUT形式的请求
	 * 封装的数据
	 * Custom
	 * [cId=1014, cName=null, cNickname=null, cEmail=null, cTel=null]
	 *
	 * 问题：
	 * 请求体中有数据；
	 * 但是Custom对象封装不上；
	 * update cutoms  where c_id = 1014;
	 *
	 * 原因：
	 * Tomcat：
	 * 		1、将请求体中的数据，封装一个map。
	 * 		2、request.getParameter("empName")就会从这个map中取值。
	 * 		3、SpringMVC封装POJO对象的时候。
	 * 				会把POJO中每个属性的值，request.getParamter("email");
	 * AJAX发送PUT请求引发的血案：
	 * 		PUT请求，请求体中的数据，request.getParameter("empName")拿不到
	 * 		Tomcat一看是PUT不会封装请求体中的数据为map，只有POST形式的请求才封装请求体为map
	 * org.apache.catalina.connector.Request--parseParameters() (3111);
	 *
	 * protected String parseBodyMethods = "POST";
	 * if( !getConnector().isParseBodyMethod(getMethod()) ) {
                success = true;
                return;
            }
          * 解决方案；
            * 我们要能支持直接发送PUT之类的请求还要封装请求体中的数据
	 * 1、配置上HttpPutFormContentFilter；
            * 2、他的作用；将请求体中的数据解析包装成一个map。
            * 3、request被重新包装，request.getParameter()被重写，就会从自己封装的map中取数据
	 * 顾客信息更新方法
	 * @param employee
	 * @return
             */
    @ResponseBody
    @RequestMapping(value="/custom/{cId}",method=RequestMethod.PUT)
    public Msg saveCustom(Customs custom,HttpServletRequest request){
        //System.out.println("将要更新的员工数据："+custom);
       customsService.updateCustom(custom);
        return Msg.success()	;
    }

    /**
     * 单个批量二合一
     * 批量删除：1-2-3
     * 单个删除：1
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/custom/{ids}",method=RequestMethod.DELETE)
    public Msg deleteCustom(@PathVariable("ids")String ids){
        //批量删除
        if(ids.contains("-")){
            List<Integer> del_ids = new ArrayList<>();
            String[] str_ids = ids.split("-");
            //组装id的集合
            for (String string : str_ids) {
                del_ids.add(Integer.parseInt(string));
            }
            customsService.deleteBatch(del_ids);
        }else{
            Integer id = Integer.parseInt(ids);
            customsService.deleteCustom(id);
        }
        return Msg.success();
    }
/**
 * 按条件查询
 * */
    @RequestMapping(value = "/selectCustom/{value}",method=RequestMethod.GET)
    @ResponseBody
    public Msg selectCustom(@PathVariable("value")String value){
        List<Customs>customs = new ArrayList<Customs>();
        Customs custom = customsService.selectCustom(value);
        //System.out.println(custom.getcId());
        customs.add(custom);

        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(customs, 1);
        return Msg.success().add("pageInfo", page);

    }
}
