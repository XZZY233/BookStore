package com.nuc.service.impl;

import com.nuc.dao.ShopMapper;
import com.nuc.model.Shop;
import com.nuc.model.User;
import com.nuc.service.BaseService;
import com.nuc.service.ShopService;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * @program: book
 * @description:
 * @author: Zhang Chi
 * @create: 2019-09-05 09:02
 */

@Service("shopService")
public class ShopServiceImpl extends BaseServiceImpl<Shop> implements ShopService {
    @Override
    public List<Shop> getListByUId(User user) {
        return shopMapper.getListByUId(user);
    }
}
