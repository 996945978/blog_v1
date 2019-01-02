package com.zzh.blog.service.impl;

import com.zzh.blog.entity.Visit;
import com.zzh.blog.mapper.VisitMapper;
import com.zzh.blog.service.VisitService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 记录访问IP和访问时间 服务实现类
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@Service
public class VisitServiceImpl extends ServiceImpl<VisitMapper, Visit> implements VisitService {

}
