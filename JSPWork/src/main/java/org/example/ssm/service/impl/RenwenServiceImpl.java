package org.example.ssm.service.impl;

import org.example.ssm.mapper.RenwenMapper;
import org.example.ssm.pojo.Renwen;
import org.example.ssm.service.RenwenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RenwenServiceImpl implements RenwenService {
    @Autowired
    private RenwenMapper renwenMapper;

    @Override
    public Renwen find(Renwen renwen) {
        return renwenMapper.find(renwen);
    }

    @Override
    public void add(Renwen renwen) {
        renwenMapper.add(renwen);
    }

    @Override
    public Renwen check(Renwen renwen) {
        return renwenMapper.check(renwen);
    }

    @Override
    public void delete(Renwen renwen) {
        renwenMapper.delete(renwen);
    }

    @Override
    public void update(Renwen renwen) {
        renwenMapper.update(renwen);
    }
}
