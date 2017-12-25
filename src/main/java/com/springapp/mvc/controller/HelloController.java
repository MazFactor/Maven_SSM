package com.springapp.mvc.controller;

import com.springapp.mvc.model.User;
import com.springapp.mvc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/restful")
public class HelloController {

    @Resource(name = "userService")
    private UserService userService;

    @RequestMapping(value = "/userinfo/{id}",method = RequestMethod.GET)
    public String showUserInfo(@PathVariable int id, ModelMap model){
        User user = userService.getUserById(id);
        if(user!=null) {
            model.addAttribute("name", user.getName());
        }else{
            model.addAttribute("name","查无此用户");
        }
        return "home";
    }



    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String showHome(ModelMap model){
        int count = userService.getUserCount();
        model.addAttribute("count",count);
        return "count";
    }
    @RequestMapping(value = "/a.do")
    public ModelAndView handleRequest(HttpServletRequest request,
                                      HttpServletResponse response) throws Exception {

        String uname=request.getParameter("name");
        Integer uage=Integer.valueOf(request.getParameter("age"));

        User info=new User();
        info.setAge(uage);
        info.setName(uname);

        userService.add(info);
        return new ModelAndView("welcome");
    }

    @RequestMapping(value = "/1.do",method = RequestMethod.GET)
    public String goToAdd(ModelMap model){
        return "add";
    }


}