package com.zzh.blog.controller;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.zzh.blog.entity.Article;
import com.zzh.blog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * <p>
 * 文章表 前端控制器
 * </p>
 *
 * @author zzh
 * @since 2019-01-02
 */
@Controller
public class ArticleController {
    @Autowired
    ArticleService articleService;
    @RequestMapping("admin_article_list")
    public String listAllArticle(Model model, Integer current, @RequestParam(defaultValue = "5") Integer size){
        Page<Article> page = articleService.selectPage(new Page<>(current,size),new EntityWrapper<Article>().orderBy("id"));
        model.addAttribute("theas", page.getRecords());
        model.addAttribute("page", page);
        return "admin/listAllArticle";
    }
}

