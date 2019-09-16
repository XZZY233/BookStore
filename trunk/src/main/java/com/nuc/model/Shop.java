package com.nuc.model;

import java.math.BigDecimal;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-05 08:25
 */
public class Shop {
    private int sId;
    private int uId;
    private int bId;
    private int sNumber;
    private String bName;
    private String bPath;
    private BigDecimal bPrice;

    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName;
    }

    public void setbPath(String bPath) {
        this.bPath = bPath;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "sId=" + sId +
                ", uId=" + uId +
                ", bId=" + bId +
                ", sNumber=" + sNumber +
                ", bPath=" + bPath +
                ", bPrice=" + bPrice +
                '}';
    }

    public int getsId() {
        return sId;
    }

    public void setsId(int sId) {
        this.sId = sId;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public int getsNumber() {
        return sNumber;
    }

    public void setsNumber(int sNumber) {
        this.sNumber = sNumber;
    }


    public String getbPath() {
        return bPath;
    }

    public BigDecimal getbPrice() {
        return bPrice;
    }

    public void setbPrice(BigDecimal bPrice) {
        this.bPrice = bPrice;
    }
}
