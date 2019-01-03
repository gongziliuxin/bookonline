package com.java.service;

import com.java.bean.Addres;
import com.java.dao.AddresMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressService {
    @Autowired
    AddresMapper addresMapper;

    public List<Addres> selectByCid(Integer cId) {
        return addresMapper.selectByCid(cId);
    }

    public void saveAddress(Addres address) {
        addresMapper.insertSelective(address);

    }

    public void delAddress(Integer aId) {
        addresMapper.deleteByCid(aId);
    }

    public Addres selectByCidDefalut(Integer cId) {
        return  addresMapper.selectByCidDefault(cId);
    }
}
