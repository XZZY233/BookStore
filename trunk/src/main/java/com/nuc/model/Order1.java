package com.nuc.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 09:46
 */
public class Order1 {
    private int oId;
    private BigDecimal oPrice;
    private Date oDate;
    private String oOver;
    private int uId;
    private User user;
    private int number;
    private List<Book> books;

    @Override
    public String toString() {
        return "Order1{" +
                "oId=" + oId +
                ", oPrice=" + oPrice +
                ", oDate=" + oDate +
                ", oOver='" + oOver + '\'' +
                ", uId=" + uId +
                ", user=" + user +
                ", number=" + number +
                ", books=" + books +
                '}';
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    public int getoId() {
        return oId;
    }

    public void setoId(int oId) {
        this.oId = oId;
    }



    public BigDecimal getoPrice() {
        return oPrice;
    }

    public void setoPrice(BigDecimal oPrice) {
        this.oPrice = oPrice;
    }

    public Date getoDate() {
        return oDate;
    }

    public void setoDate(Date oDate) {
        this.oDate = oDate;
    }

    public String getoOver() {
        return oOver;
    }

    public void setoOver(String oOver) {
        this.oOver = oOver;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
