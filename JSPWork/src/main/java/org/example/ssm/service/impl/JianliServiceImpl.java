package org.example.ssm.service.impl;

import org.example.ssm.mapper.JianliMapper;
import org.example.ssm.pojo.Jianli;
import org.example.ssm.service.JianliService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class JianliServiceImpl implements JianliService {

    @Autowired
    private JianliMapper jianliMapper;

    @Override
    public Jianli find(Jianli jianli) {
        return jianliMapper.find(jianli);
    }
}
