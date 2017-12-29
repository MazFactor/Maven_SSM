package com.springapp.mvc.controller;

import com.springapp.mvc.model.Article;
import com.springapp.mvc.service.ArticleService;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;



@Controller
//@RequestMapping("/")
public class ArticleController {

    @Resource(name = "articleService")
    private ArticleService articleService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:允许输入空值，false:不能为空值
    }
    @RequestMapping("/")
    public String getAllArticles(Model model){
        List<Article> list = articleService.getAllArticles(1); // 默认查询用户1的记录
        model.addAttribute("articles", list);
        return "index";
    }

    @RequestMapping("edit")
    public String toEdit(){
        return "edit";
    }
    @RequestMapping("addArticle")
    public String addArticle(HttpServletRequest request, HttpServletResponse response)throws Exception {
        Article article = new Article();
        String subject = request.getParameter("subject");
        String content = request.getParameter("content");


        article.setSubject(subject);
        article.setContent(content);
        article.setAuthorId(1); // 暂时设置默认为1，待以后改为动态
        article.setTags("java");
        article.setCreate_time(new Date());
        article.setModify_time(new Date());
        articleService.addArticle(article);
        return "redirect:/";
    }
}
