package com.zzh.blog.entity;

import java.io.Serializable;

/**
 * <p>
 * 用户表
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    private String name;
    private String password;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
        ", name=" + name +
        ", password=" + password +
        "}";
    }
}
