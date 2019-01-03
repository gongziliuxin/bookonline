package com.java.service;

import com.java.bean.Admin;
import com.java.dao.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminService {


    @Autowired
    AdminMapper adminMapper;

    public List<Admin> selectName(String name) {
        Admin admin=adminMapper.selectByName(name);
        List<Admin> list= new ArrayList<Admin>();
        list.add(admin);
        return list;

    }
}
