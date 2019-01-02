package com.zzh.blog.service.impl;

import com.zzh.blog.entity.Category;
import com.zzh.blog.mapper.CategoryMapper;
import com.zzh.blog.service.CategoryService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 分类表 服务实现类
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements CategoryService {

}
