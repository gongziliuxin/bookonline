package com.java.dao;

import com.java.bean.Books;
import com.java.bean.BooksExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BooksMapper {
    long countByExample(BooksExample example);
    int deleteByExample(BooksExample example);
    Books selectByName(String bName);
    Books selectByIsbn(String bIsbn);
    List<Books> selectByAuthor(String bAuthor);
    List<Books> selectByType(String bType);
    List<Books> selectByPublisher(String bPublisher);
    int insert(Books record);

    int insertSelective(Books record);

    List<Books> selectByExample(BooksExample example);

    int updateByExampleSelective(@Param("record") Books record, @Param("example") BooksExample example);

    int updateByExample(@Param("record") Books record, @Param("example") BooksExample example);
    Books selectByPrimaryKey(Integer bId);

    int updateByPrimaryKeySelective(Books book);

    int deleteByPrimaryKey(Integer bId);

    List<Books> selectHot();

    List<Books> selectByLike(String bName);
}