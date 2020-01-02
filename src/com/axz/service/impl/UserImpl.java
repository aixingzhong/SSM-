package com.axz.service.impl;

import com.axz.mapper.UserMapper;
import com.axz.model.User;
import com.axz.service.IUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
//Control调用接口，实现类必须声明@Service
@Service
public class UserImpl implements IUser {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findAllUser() {
        return userMapper.findAllUser();
    }

    @Override
    public User findUser(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public int delUser(Integer id) {
        return userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insertUser(User user) {
        return userMapper.insert(user);
    }
}
