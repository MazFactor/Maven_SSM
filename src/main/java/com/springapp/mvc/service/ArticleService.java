package com.springapp.mvc.service;

import com.springapp.mvc.model.Article;

import java.util.List;

public interface ArticleService {
    Article getArticleById(int id);
    List<Article> getAllArticles(int authorId);
    void addArticle(Article article);
    void updateArticle(Article article);
}
