package com.zsj.service;

import com.zsj.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(int id);

    //更新一本书
    int updateBook(Books books);

    //根据id查询
    Books queryBookById(int id);

    //查询全部的书
    List<Books> queryAllBook();

    //搜索书
    List<Books> queryBook(String bookName);
}
