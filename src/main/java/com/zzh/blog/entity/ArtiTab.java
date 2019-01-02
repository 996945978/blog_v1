package com.zzh.blog.entity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 文章-标签表
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@TableName("arti_tab")
public class ArtiTab implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer aid;
    private Integer tid;


    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    @Override
    public String toString() {
        return "ArtiTab{" +
        ", aid=" + aid +
        ", tid=" + tid +
        "}";
    }
}
