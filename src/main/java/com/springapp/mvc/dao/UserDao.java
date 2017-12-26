package com.springapp.mvc.dao;

import com.springapp.mvc.model.*;


public interface UserDao {
    User getUserById(int id);

    User getUserByName(String name);

    int getUserCount();

    void add(User user);

}
