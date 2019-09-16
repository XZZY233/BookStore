package com.nuc.model;

import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 09:46
 */
public class Type {
    private int tId;
    private String tName;
    private List<Book> books;

    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    @Override
    public String toString() {
        return "Type{" +
                "tId=" + tId +
                ", tName='" + tName + '\'' +
                ", books=" + books +
                '}';
    }
}
