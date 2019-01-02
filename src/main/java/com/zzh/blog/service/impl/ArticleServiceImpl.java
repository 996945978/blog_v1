package com.zzh.blog.service.impl;

import com.zzh.blog.entity.Article;
import com.zzh.blog.mapper.ArticleMapper;
import com.zzh.blog.service.ArticleService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 文章表 服务实现类
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {

}
