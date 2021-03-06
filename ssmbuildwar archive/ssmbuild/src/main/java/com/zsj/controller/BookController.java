package com.zsj.controller;

import com.zsj.pojo.Books;
import com.zsj.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //controller调service层

    @Autowired
    @Qualifier("BookServiceImpl")
    public BookService bookService;
    //查询全部的数据,并且返回到一个书籍展示界面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> lists = bookService.queryAllBook();
        model.addAttribute("list",lists);
        return "/WEB-INF/books/allBook.jsp";
    }
    //增加书籍页面
    @RequestMapping("/toaddBook")
    public String toAddPaper(){
        return "/WEB-INF/books/addBook.jsp";
    }
    //增加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }
    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatepaper(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("Qbooks",books);
        return "/WEB-INF/books/updateBook.jsp";
    }
    //修改书籍
    @RequestMapping("/updateBook")
    public String Updatepaper(Books books){
        System.out.println("UpdateBook=="+books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }
    //删除书籍
    @RequestMapping("/deletebook/{bookId}")
    public String Deletepaper(@PathVariable("bookId") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
    //查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        List<Books> books = bookService.queryBook(queryBookName);
        System.out.println("books==========="+books+books==null);
        if(books.size()!=0) {
            model.addAttribute("list", books);
        }
        else
        {
            model.addAttribute("error","没有查询到相关书籍");
        }
        return "/WEB-INF/books/allBook.jsp";
    }
}
