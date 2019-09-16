package com.nuc.service;




import com.nuc.model.Book;

import java.util.List;

/**
 * @program: books
 * @description: 书类Service
 * @author: Zhang Chi
 * @create: 2019-07-12 16:49
 */
public interface BookService extends BaseService<Book> {

    //返回所有图书
    List<Book> findAllbooks();
    //通过种类id返回所有图书
    List<Book> findBooksByTid(int Tid);
    //通过点击率返回所有图书
    List<Book> findBooksListByBclick();
    //通过id得图书
    Book findBookByBid(int bid);
    //通过书名的图书
    Book findBookByBname(String bname);
    //通过书名得id
    int findBidByBname(String bname);
    //通过书名模糊查询所有图书
    List<Book> searchBookByBname(String bName);

}
