package com.springapp.mvc.controller;

import com.springapp.mvc.model.Article;
import com.springapp.mvc.service.ArticleService;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;



@Controller
@RequestMapping("/")
public class ArticleController {

    @Resource(name = "articleService")
    private ArticleService articleService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:允许输入空值，false:不能为空值
    }
    @RequestMapping("/index")
    public String getAllArticles(Model model){
        List<Article> list = articleService.getAllArticles(1);
        model.addAttribute("articles", list);
        return "index";
    }

}
