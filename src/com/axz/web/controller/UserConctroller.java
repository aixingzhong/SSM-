package com.axz.web.controller;

import com.axz.model.User;
import com.axz.service.IUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserConctroller {
    @Autowired
    private IUser iUser;

    @RequestMapping("list")
    public String list() {
        List<User> list = iUser.findAllUser();
        for (User user : list) {
            System.out.println(user.getUserName());
        }
        User myUser = iUser.findUser(107);

        System.out.println(myUser.getUserName());
        return "/user/list";
    }
}
