package com.java.service;

import com.java.bean.Customs;
import com.java.bean.CustomsExample;
import com.java.dao.CustomsMapper;
import com.java.bean.CustomsExample.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class CustomsService {
    @Autowired
    CustomsMapper customsMapper;
    /*
     * 查询所有顾客信息
     * */
    public  List<Customs> getAll() {

        return (customsMapper.selectByExample(null));
    }

    /*
    * 新增顾客保存
    * */
    public void saveCustom(Customs custom) {
        customsMapper.insertSelective(custom);

    }
    /*
    * 按照顾客id查询顾客信息
    * */
    public Customs getCustom(Integer id) {
        Customs custom = customsMapper.selectByPrimaryKey(id);
        return custom;
    }

    /*
    * 跟新顾客信息
    * */
    public void updateCustom(Customs custom) {
        customsMapper.updateByPrimaryKeySelective(custom);

    }


    public void deleteBatch(List<Integer> del_ids) {
        CustomsExample example = new CustomsExample();
        Criteria criteria = example.createCriteria();
        //delete from xxx where emp_id in(1,2,3)
        criteria.andCIdIn(del_ids);
        customsMapper.deleteByExample(example);

    }
/*
* 单个删除顾客信息
* */
    public void deleteCustom(Integer id) {
        customsMapper.deleteByPrimaryKey(id);

    }
    /**
     * 按条件查询
     * */
    public Customs selectCustom(String value){
        if(customsMapper.selectByName(value)!=null){
            return customsMapper.selectByName(value);
        }else if(customsMapper.selectByNickname(value)!=null){
            return customsMapper.selectByNickname(value);
        }else if(customsMapper.selectByTel(value)!= null){
            return customsMapper.selectByTel(value);
        }

        return null;
    }
/*
* 查询顾客信息
* */
    public List<Customs> selectByTel(String tel) {
        Customs customs=customsMapper.selectByTel(tel);
        List<Customs> list =new ArrayList<Customs>();
        list.add(customs);
        return list;
    }

    /*
    * 用户注册，保存新增
    * */
    public void insertCustom(Customs customs) {
        customsMapper.insertSelective(customs);
    }

    public List<Customs> selectByNickname(String nickname) {
        Customs customs = customsMapper.selectByNickname(nickname);
        List<Customs> list =new ArrayList<Customs>();
        list.add(customs);
        return list;

    }
}
