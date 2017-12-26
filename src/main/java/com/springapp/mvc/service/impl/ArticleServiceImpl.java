package com.springapp.mvc.service.impl;

import com.springapp.mvc.dao.ArticleDao;
import com.springapp.mvc.model.Article;
import com.springapp.mvc.service.ArticleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService{

    @Resource(name = "articleDao")
    private ArticleDao articleDao;

    @Override
    public Article getArticleById(int id) {
        return null;
    }

    @Override
    public List<Article> getAllArticles(int authorId) {
        return articleDao.getAllArticles(authorId);
    }

    @Override
    public void addArticle(Article article) {

    }
}
