package com.java.controller;

import com.github.pagehelper.PageInfo;
import com.java.bean.Books;
import com.java.bean.Customs;
import com.java.bean.Msg;
import com.java.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class BooksController {

    @Autowired
    BooksService booksService;

    /*
  * 显示书籍信息页面
  * */
    @RequestMapping("/booklists")
    public String booklist(){
        return "booklists";
    }

    /*
    *
    * 保存新增书籍信息
    * */

    @RequestMapping(value="/book", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveBook(Books books){
        booksService.saveBook(books);
        return Msg.success();
    }
    /*
     * 根据id查询书籍信息
     * */
    @RequestMapping(value="/book/{id}",method=RequestMethod.GET)
    @ResponseBody
    public Msg getCustom(@PathVariable("id")Integer id){

        Books book = booksService.getBook(id);
        return Msg.success().add("book", book);

    }
    /*
    * 跟新书籍信息
    * */
    @ResponseBody
    @RequestMapping(value="/book/{bId}",method=RequestMethod.PUT)
    public Msg saveBook(Books book,HttpServletRequest request){
        //System.out.println("将要更新的员工数据："+custom);
        booksService.updateBook(book);
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
    @RequestMapping(value="/book/{ids}",method=RequestMethod.DELETE)
    public Msg deleteBook(@PathVariable("ids")String ids){
        //批量删除
        if(ids.contains("-")){
            List<Integer> del_ids = new ArrayList<>();
            String[] str_ids = ids.split("-");
            //组装id的集合
            for (String string : str_ids) {
                del_ids.add(Integer.parseInt(string));
            }
            booksService.deleteBatch(del_ids);
        }else{
            Integer id = Integer.parseInt(ids);
            booksService.deleteCustom(id);
        }
        return Msg.success();
    }
    /**
     * 按条件查询
     * */
    @RequestMapping(value = "/selectBook/{value}",method=RequestMethod.GET)
    @ResponseBody
    public Msg selectCustom(@PathVariable("value")String value){
        List<Books>books = booksService.selectBooks(value);

        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(books, 1);
        return Msg.success().add("pageInfo", page);

    }
}
