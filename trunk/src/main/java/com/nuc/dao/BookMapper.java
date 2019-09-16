package com.nuc.dao;




import com.nuc.model.Book;
import com.nuc.model.Order1;
import com.nuc.model.Type;
import com.nuc.model.User;

import java.util.List;

/**
 * @program: books
 * @description: 书类的基本Dao
 * @author: Zhang Chi
 * @create: 2019-07-11 17:26
 */
public interface BookMapper extends BaseMapper<Book> {

    //返回所有图书
    List<Book> findAllbooks();
    //通过种类id返回所有图书
    List<Book> findBooksByTid(Type type);
    //通过点击率返回所有图书
    List<Book> findBooksListByBclick();
    //通过id得图书
    Book findBookByBid(Book book);
    //通过书名的图书
    Book findBookByBname(Book book);
    //通过书名得id
    int findBidByBname(String bName);
    //通过书名模糊查询所有图书
    List<Book> searchBookByBname(String bName);

}
