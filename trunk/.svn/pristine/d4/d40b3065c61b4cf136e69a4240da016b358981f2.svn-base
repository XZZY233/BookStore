package com.nuc.model;

import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 09:43
 */
@Component
public class User {
    private int uId;
    private String uName;
    private String uTel;
    private String uPwd;
    private String uAddress;
    private String uGender;
    private String uOnline;
    private List<Order1> orders;

    //当前用户的session id
    private String sessionId;
    //当前用户的ip地址
    private String ip;
    //当前用户第一次访问的时间
    private String firstTime;

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getFirstTime() {
        return firstTime;
    }

    public void setFirstTime(String firstTime) {
        this.firstTime = firstTime;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuTel() {
        return uTel;
    }

    public void setuTel(String uTel) {
        this.uTel = uTel;
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd;
    }

    public String getuAddress() {
        return uAddress;
    }

    public void setuAddress(String uAddress) {
        this.uAddress = uAddress;
    }

    public String getuGender() {
        return uGender;
    }

    public void setuGender(String uGender) {
        this.uGender = uGender;
    }

    public String getuOnline() {
        return uOnline;
    }

    public void setuOnline(String uOnline) {
        this.uOnline = uOnline;
    }

    public List<Order1> getOrders() {
        return orders;
    }

    public void setOrders(List<Order1> orders) {
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "User{" +
                "uId=" + uId +
                ", uName='" + uName + '\'' +
                ", uTel='" + uTel + '\'' +
                ", uPwd='" + uPwd + '\'' +
                ", uAddress='" + uAddress + '\'' +
                ", uGender='" + uGender + '\'' +
                ", uOnline='" + uOnline + '\'' +
                ", orders=" + orders +
                '}';
    }
}
