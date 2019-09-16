package com.nuc.dao;

import com.nuc.model.Page;

import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 10:45
 */
public interface BaseMapper<T> {
    // 添加单个对象
    int insert(T entity);

    // 修改单个对象
    int update(T entity);

    // 删除单个对象
    int delete(T entity);

    // 查询单个对象
    T select(T entity);

    // 通过关键字分页查询数据列表
    public List<T> selectPageListUseDyc(Page<T> page);

    // 通过关键字分页查询所有数据列表(order用)
    public List<T> selectAllPageListUseDyc(Page<T> page);

    //通过关键字返回所有未收货订单
    public List<T> selectAllUnfinishedUseDyc(Page<T> page);

    // 通过关键字分页查询，返回总记录数
    public Integer selectPageCountUseDyc(Page<T> page);

    // 根据名称进行判断
    int objectNameIsExsit(T entity);

    // 根据名称进行判断
    int objectNameAndIdIsExsit(T entity);

    // 根据编号进行判断
    int objectNumIsExsit(T entity);

    // 根据名称进行判断
    int objectNumAndIdIsExsit(T entity);

}
