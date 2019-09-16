package com.nuc.service;

import com.nuc.model.Type;

import java.util.List;

public interface TypeService extends BaseService<Type> {
    //判断种类名是否存在
    Type findByTname(Type type);
    //返回所有种类
    List<Type> findAllType();
    //通过种类名取得种类id
    int findTidByTname(String tName);
    //通过图书id取得所属种类
    List<Type> findTypeByBid(int bId);

}
