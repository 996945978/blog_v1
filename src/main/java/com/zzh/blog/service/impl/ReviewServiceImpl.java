package com.zzh.blog.service.impl;

import com.zzh.blog.entity.Review;
import com.zzh.blog.mapper.ReviewMapper;
import com.zzh.blog.service.ReviewService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 评论表 服务实现类
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@Service
public class ReviewServiceImpl extends ServiceImpl<ReviewMapper, Review> implements ReviewService {

}
