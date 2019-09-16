package com.nuc.service.impl;

import com.nuc.model.Order1;
import com.nuc.service.BaseService;
import com.nuc.service.OrderService;
import org.springframework.stereotype.Service;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-05 10:58
 */
@Service("orderService")
public class OrderServiceImpl  extends BaseServiceImpl<Order1> implements OrderService {
    @Override
    public Order1 getMaxOId() {
        return orderMapper.getMaxOId();
    }
}
