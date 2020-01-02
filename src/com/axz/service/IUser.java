package com.axz.service;

import com.axz.model.User;

import java.util.List;

public interface IUser {
    public List<User> findAllUser();

    public User findUser(Integer id);

    public int delUser(Integer id);

    public int insertUser(User user);
}
