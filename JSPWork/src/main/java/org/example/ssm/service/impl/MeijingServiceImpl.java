package org.example.ssm.service.impl;

import org.example.ssm.mapper.MeijingMapper;
import org.example.ssm.pojo.Meijing;
import org.example.ssm.service.MeijingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MeijingServiceImpl implements MeijingService {
    @Autowired
    private MeijingMapper meijingMapper;

    @Override
    public Meijing find(Meijing meijing) {
        return meijingMapper.find(meijing);
    }

    @Override
    public Meijing check(Meijing meijing) {
        return meijingMapper.check(meijing);
    }

    @Override
    public void add(Meijing meijing) {
        meijingMapper.add(meijing);
    }

    @Override
    public void delete(Meijing meijing) {
        meijingMapper.delete(meijing);
    }

    @Override
    public void update(Meijing meijing) {
        meijingMapper.update(meijing);
    }
}
