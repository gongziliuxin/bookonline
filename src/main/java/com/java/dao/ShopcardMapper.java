package com.java.dao;

import com.java.bean.Shopcard;
import com.java.bean.ShopcardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShopcardMapper {
    long countByExample(ShopcardExample example);

    int deleteByExample(ShopcardExample example);

    int insert(Shopcard record);

    int insertSelective(Shopcard record);

    List<Shopcard> selectByExample(ShopcardExample example);

    List<Shopcard> selectByExampleWithBookInfo(ShopcardExample example);

    Shopcard selectByPrimaryKeyWithDept(Integer cid,Integer bid);

    int updateByExampleSelective(@Param("record") Shopcard record, @Param("example") ShopcardExample example);

    int updateByExample(@Param("record") Shopcard record, @Param("example") ShopcardExample example);
    Shopcard selectByBid(Integer bId);

    void updateScnum(Shopcard shopcard);

    int deleteByPrimaryKey(@Param("cid")Integer cid,@Param("bid") Integer bid);


}