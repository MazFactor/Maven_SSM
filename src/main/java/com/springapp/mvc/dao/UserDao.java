package com.springapp.mvc.dao;

import com.springapp.mvc.model.*;

public interface UserDao {
    User getUserById(int id);

    int getUserCount();

    void add(User user);
}
