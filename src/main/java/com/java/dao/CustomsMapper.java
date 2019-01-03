package com.java.dao;

import com.java.bean.Customs;
import com.java.bean.CustomsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CustomsMapper {


    long countByExample(CustomsExample example);

    int deleteByExample(CustomsExample example);
    int deleteByPrimaryKey(Integer cId);
    int insert(Customs record);

    int insertSelective(Customs record);

     List<Customs> selectByExample(CustomsExample example);

    int updateByExampleSelective(@Param("record") Customs record);

    int updateByExample(@Param("record") Customs record, @Param("example") CustomsExample example);

    Customs selectByPrimaryKey(Integer cId);

    Customs selectByTel(String cTel);
    Customs selectByName(String cName);
    Customs selectByNickname(String cNickname);

    int updateByPrimaryKeySelective(Customs record);




}