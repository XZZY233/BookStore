package com.nuc.service.impl;

import com.nuc.dao.*;
import com.nuc.model.Page;
import com.nuc.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 17:27
 */
public  class BaseServiceImpl<T> implements BaseService<T> {

    @Autowired
    protected BaseMapper<T> baseMapper;

    @Autowired
    protected UserMapper userMapper;
    @Autowired
    protected AdminMapper adminMapper;
    @Autowired
    protected BookMapper bookMapper;
    @Autowired
    protected TypeMapper typeMapper;
    @Autowired
    protected ShopMapper shopMapper;
    @Autowired
    protected OrderBookMapper orderBookMapper;
    @Autowired
    protected OrderMapper orderMapper;

    @Override
    public int insert(T entity) throws Exception {
        return baseMapper.insert(entity);
    }

    @Override
    public int update(T entity) throws Exception {
        return baseMapper.update(entity);
    }

    @Override
    public int delete(T entity) throws Exception {
        return baseMapper.delete(entity);
    }

    @Override
    public T select(T entity) {
        return baseMapper.select(entity);
    }

    public Page<T> selectPageUseDyc(Page<T> page) {
        System.out.println(page.getStart());
        page.setList(baseMapper.selectPageListUseDyc(page));
        page.setTotalRecord(baseMapper.selectPageCountUseDyc(page));
        return page;
    }

    @Override
    public Page<T> selectAllPageListUseDyc(Page<T> page) {
        System.out.println(page.getStart());
        page.setList(baseMapper.selectAllPageListUseDyc(page));
        page.setTotalRecord(baseMapper.selectPageCountUseDyc(page));
        return page;
    }

    @Override
    public Page<T> selectAllUnfinishedUseDyc(Page<T> page) {
        System.out.println(page.getStart());
        page.setList(baseMapper.selectAllUnfinishedUseDyc(page));
        page.setTotalRecord(baseMapper.selectPageCountUseDyc(page));
        return page;
    }


    @Override
    public int objectNameIsExsit(T entity) {
        return baseMapper.objectNameIsExsit(entity);
    }

    @Override
    public int objectNameAndIdIsExsit(T entity) {
        return baseMapper.objectNameAndIdIsExsit(entity);
    }

    @Override
    public int objectNumIsExsit(T entity) {
        return baseMapper.objectNumIsExsit(entity);
    }

    @Override
    public int objectNumAndIdIsExsit(T entity) {
        return baseMapper.objectNumAndIdIsExsit(entity);
    }
}
