package com.zzh.blog.entity;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import java.io.Serializable;

/**
 * <p>
 * 记录访问IP和访问时间
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
public class Visit implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 访问人的ip地址
     */
    private String ip;
    /**
     * 访问时间
     */
    private Date time;
    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;


    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Visit{" +
        ", ip=" + ip +
        ", time=" + time +
        ", id=" + id +
        "}";
    }
}
