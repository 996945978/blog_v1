package com.zzh.blog.entity;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import lombok.Data;
import java.io.Serializable;

/**
 * <p>
 * 文章表
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@Data
public class Article implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String title;
    private Integer count;
    private String content;
    private Integer cid;
    private String sub;
    @TableField("create_date")
    private String createDate;
    private Integer view;
    @TableField("update_date")
    private String updateDate;
    private Integer agree;

    @TableField(exist = false)
    private Category category;
    /**
     * 0:正文，1：草稿
     */
    @TableField("is_draft")
    private Integer isDraft;

    @Override
    public String toString() {
        return "Article{" +
                ", id=" + id +
                ", title=" + title +
                ", count=" + count +
                ", content=" + content +
                ", cid=" + cid +
                ", sub=" + sub +
                ", createDate=" + createDate +
                ", view=" + view +
                ", updateDate=" + updateDate +
                ", agree=" + agree +
                ", isDraft=" + isDraft +
                "}";
    }
}
