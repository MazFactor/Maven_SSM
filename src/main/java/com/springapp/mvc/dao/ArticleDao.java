package com.springapp.mvc.dao;

import com.springapp.mvc.model.Article;

import java.util.List;

public interface ArticleDao {
    Article getArticleById(int id);
    List<Article> getAllArticles(int authorId);
    void addArticle(Article article);
}
