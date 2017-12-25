package com.springapp.mvc.service;

import com.springapp.mvc.model.*;

public interface UserService {
    User getUserById(int id);

    int getUserCount();

    void add(User user);
}
