package com.java.dao;

import com.java.bean.Addres;
import com.java.bean.AddresExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AddresMapper {
    long countByExample(AddresExample example);

    int deleteByExample(AddresExample example);

    int insert(Addres record);

    int insertSelective(Addres record);

    List<Addres> selectByExample(AddresExample example);

    int updateByExampleSelective(@Param("record") Addres record, @Param("example") AddresExample example);

    int updateByExample(@Param("record") Addres record, @Param("example") AddresExample example);

     List<Addres> selectByCid(Integer cId);

    int deleteByCid(Integer aId);

      Addres selectByCidDefault(Integer aId) ;
}