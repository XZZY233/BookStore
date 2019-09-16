package com.nuc.service.impl;

import com.nuc.model.Type;
import com.nuc.service.TypeService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("typeService")
public class TypeServiceImpl extends BaseServiceImpl<Type> implements TypeService {
    @Override
    public Type findByTname(Type type) {
        return typeMapper.findByTname(type);
    }

    @Override
    public List<Type> findAllType() {
        return typeMapper.findAllType();
    }

    @Override
    public int findTidByTname(String tName) {
        return typeMapper.findTidByTname(tName);
    }

    @Override
    public List<Type> findTypeByBid(int bId) {
        return typeMapper.findTypeByBid(bId);
    }

}
