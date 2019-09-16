package com.nuc.dao;

import com.nuc.model.User;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 10:48
 */
public interface UserMapper extends BaseMapper<User> {
    //判断手机号是否注册
     User findByUtel(User user);

    /*
     * 修改密码
     */
    int updatepwd(User u);

     int onLine(int uId);
     int outLine(int uId);

     int onLineNumber();
     int changeBasic(User user);
}
