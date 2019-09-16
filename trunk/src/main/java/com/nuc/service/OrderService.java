package com.nuc.service;

import com.nuc.model.Order1;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-05 10:57
 */
public interface OrderService extends BaseService<Order1> {
    Order1 getMaxOId();
}
