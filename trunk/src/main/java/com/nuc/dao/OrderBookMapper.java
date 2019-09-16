package com.nuc.dao;

import com.nuc.model.OrderBookEntity;
import com.nuc.model.User;

import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-08-30 15:40
 */

public interface OrderBookMapper extends BaseMapper<OrderBookEntity>{
    List<OrderBookEntity> findByuId(User user);

}
