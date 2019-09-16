package com.nuc.service.impl;

import com.nuc.model.User;
import com.nuc.service.UserService;
import org.springframework.stereotype.Service;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 17:56
 */
@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Override
    public User findByUtel(User user) {
        return userMapper.findByUtel(user);
    }

    @Override
    public int onLine(int uId) {
        return userMapper.onLine(uId);
    }

    @Override
    public int outLine(int uId) {
        return userMapper.outLine(uId);
    }

    @Override
    public int onLineNumber() {
        return userMapper.onLineNumber();
    }

    @Override
    public int changeBasic(User user) {
        return userMapper.changeBasic(user);
    }

}
