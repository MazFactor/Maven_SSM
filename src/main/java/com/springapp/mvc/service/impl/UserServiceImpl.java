package com.springapp.mvc.service.impl;

import com.springapp.mvc.dao.*;
import com.springapp.mvc.model.*;
import com.springapp.mvc.service.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service("userService")
public class UserServiceImpl implements UserService {


    @Resource(name = "userDao")
    private UserDao userDao;

    public User getUserById(int id){
        return userDao.getUserById(id);
    }

    public int getUserCount(){
        return userDao.getUserCount();
    }

    @Override
    public void add(User user) {
        userDao.add(user);
    }
}
