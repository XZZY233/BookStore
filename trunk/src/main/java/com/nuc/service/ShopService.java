package com.nuc.service;

import com.nuc.model.Shop;
import com.nuc.model.User;

import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-05 09:01
 */
public interface ShopService extends BaseService<Shop> {

    List<Shop> getListByUId(User user);
}
