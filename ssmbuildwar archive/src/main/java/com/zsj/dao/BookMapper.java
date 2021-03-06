package com.zsj.dao;


import com.zsj.pojo.Books;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
public interface BookMapper {
    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(@Param("bookId") int id);

    //更新一本书
    int updateBook(Books books);

    //根据id查询
    Books queryBookById(@Param("bookId") int id);

    //查询全部的书
    List<Books> queryAllBook();

    //关键字查询书籍
    List<Books> queryBook(@Param("bookName") String Name);
}
