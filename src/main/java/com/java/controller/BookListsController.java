package com.java.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.bean.Books;
import com.java.bean.Msg;
import com.java.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class BookListsController {

    @Autowired
    BooksService booksService;

    /**
     * 导入jackson包。
     * @param pn
     * @return
     */
    @RequestMapping("/books")
    @ResponseBody
    public Msg getBooksListWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 这不是一个分页查询
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 3);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Books> books = booksService.getAll();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(books, 5);
        return Msg.success().add("pageInfo", page);
    }



}
