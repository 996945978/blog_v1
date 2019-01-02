package com.zzh.blog.entity;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import java.io.Serializable;

/**
 * <p>
 * 文章表
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
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
    /**
     * 0:正文，1：草稿
     */
    @TableField("is_draft")
    private Integer isDraft;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getSub() {
        return sub;
    }

    public void setSub(String sub) {
        this.sub = sub;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public Integer getView() {
        return view;
    }

    public void setView(Integer view) {
        this.view = view;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public Integer getAgree() {
        return agree;
    }

    public void setAgree(Integer agree) {
        this.agree = agree;
    }

    public Integer getIsDraft() {
        return isDraft;
    }

    public void setIsDraft(Integer isDraft) {
        this.isDraft = isDraft;
    }

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
