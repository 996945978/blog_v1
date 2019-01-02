package com.zzh.blog.service.impl;

import com.zzh.blog.entity.User;
import com.zzh.blog.mapper.UserMapper;
import com.zzh.blog.service.UserService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
