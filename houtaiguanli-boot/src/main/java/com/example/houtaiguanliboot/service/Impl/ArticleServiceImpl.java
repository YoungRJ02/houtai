package com.example.houtaiguanliboot.service.Impl;

import com.example.houtaiguanliboot.entity.Article;
import com.example.houtaiguanliboot.mapper.ArticleMapper;
import com.example.houtaiguanliboot.service.IArticleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author young
 * @since 2023-12-03
 */
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements IArticleService {

}
