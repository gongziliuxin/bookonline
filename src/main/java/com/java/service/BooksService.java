package com.java.service;

import com.java.bean.Books;
import com.java.bean.BooksExample;
import com.java.bean.Customs;
import com.java.dao.BooksMapper;
import com.java.dao.CustomsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BooksService {

    @Autowired
    BooksMapper booksMapper;

    public List<Books> getAll() {
        return (booksMapper.selectByExample(null));
    }

    /*
    * 保存新增书籍信息
    * */
    public void saveBook(Books books) {
        booksMapper.insertSelective(books);
    }

    public Books getBook(Integer id) {
        Books book = booksMapper.selectByPrimaryKey(id);
        return book;
    }
    /*
    * 书籍信息更新
    * */

    public void updateBook(Books book) {
        booksMapper.updateByPrimaryKeySelective(book);
    }

    /*
    * 批量删除
    * */
    public void deleteBatch(List<Integer> del_ids) {
        BooksExample example = new BooksExample();
        BooksExample.Criteria criteria = example.createCriteria();
        //delete from xxx where emp_id in(1,2,3)
        criteria.andBIdIn(del_ids);
        booksMapper.deleteByExample(example);
    }

    /**
     * 单个删除
     * */
    public void deleteCustom(Integer id) {
        booksMapper.deleteByPrimaryKey(id);

    }
    /***
     *
     * 按条件查询
     */


    public List<Books> selectBooks(String value) {

        List<Books> list = new ArrayList<Books>();

        if(booksMapper.selectByName(value)!=null){
            list.add(booksMapper.selectByName(value));
            return list;
        }else if(booksMapper.selectByIsbn(value)!=null){
            list.add(booksMapper.selectByIsbn(value));
            return list;
        }else if(!(booksMapper.selectByAuthor(value)).isEmpty()){
            return  booksMapper.selectByAuthor(value);
        }else if(!(booksMapper.selectByPublisher(value)).isEmpty()){
            return booksMapper.selectByPublisher(value);
        }

        return list;
    }


    /*
    * 根据不同条件从数据库获取书籍信息
    * */
    public List<Books> selectByValue(String value) {
        String[] valueList = value.split("=");
        List<Books> list= new ArrayList<Books>();
        if(valueList[0].equals("category")){
            return booksMapper.selectByType(valueList[1]);
        }else if(valueList[0].equals("hot")){
            if(valueList[1].equals("all")) {
                return booksMapper.selectHot();
            }else{
                int num = Integer.parseInt(valueList[1]);
                for(int i=0;i<num;i++){
                    list.add(booksMapper.selectHot().get(i));
                }
                return list;
            }
        }else if(valueList[0].equals("id")){
            Books book=booksMapper.selectByPrimaryKey(Integer.parseInt(valueList[1]));
            list.add(book);
            return list;
        }else if(valueList[0].equals("name")){
            Books book = booksMapper.selectByName(valueList[1]);
            list.add(book);
            return list;
        }else if(valueList[0].equals("select")){
            return booksMapper.selectByLike(valueList[1]);

        }
        return null;
    }


}
