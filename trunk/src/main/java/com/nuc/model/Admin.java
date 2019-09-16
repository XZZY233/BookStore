package com.nuc.model;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-31 10:41
 */
public class Admin {
    private int aId;
    private String aName;
    private String aPwd;
    private String aGender;

    @Override
    public String toString() {
        return "Admin{" +
                "aId=" + aId +
                ", aName='" + aName + '\'' +
                ", aPwd='" + aPwd + '\'' +
                ", aGender='" + aGender + '\'' +
                '}';
    }

    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaPwd() {
        return aPwd;
    }

    public void setaPwd(String aPwd) {
        this.aPwd = aPwd;
    }

    public String getaGender() {
        return aGender;
    }

    public void setaGender(String aGender) {
        this.aGender = aGender;
    }
}
