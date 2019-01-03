package com.java.service;

import com.java.bean.Addres;
import com.java.bean.Shopcard;
import com.java.bean.ShopcardExample;
import com.java.dao.AddresMapper;
import com.java.dao.ShopcardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopcardService {
    @Autowired
    ShopcardMapper shopcardMapper;


    public Shopcard selectByBid(Integer bid) {
      Shopcard shopcard= shopcardMapper.selectByBid(bid);
      return  shopcard;
    }

    public void saveIntoShopcard(Shopcard shopcard) {
        shopcardMapper.insertSelective(shopcard);
    }

    public void updateScnum(Shopcard shopcard) {
        shopcardMapper.updateScnum( shopcard);
    }

    public List<Shopcard> getAll(){
        return  shopcardMapper.selectByExampleWithBookInfo(null);
    }

    public void delshopcarbook(Integer cid,Integer bid) {
        shopcardMapper.deleteByPrimaryKey(cid,bid);

    }

}
