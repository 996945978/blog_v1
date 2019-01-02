package com.zzh.blog.entity;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import java.io.Serializable;

/**
 * <p>
 * 分类表
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;

    private String info;
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String name;


    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" +
        ", info=" + info +
        ", id=" + id +
        ", name=" + name +
        "}";
    }
}
