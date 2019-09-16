package com.nuc.dao;

import com.nuc.model.Shop;
import com.nuc.model.User;

import java.util.List;

/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-05 08:29
 */
public interface ShopMapper extends BaseMapper<Shop> {
        List<Shop> getListByUId(User user);
}
