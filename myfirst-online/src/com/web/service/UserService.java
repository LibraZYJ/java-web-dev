package com.web.service;

import com.web.entity.User;
import com.web.utils.Md5Util;

import java.util.List;

/**
 * @author yujie_zhao
 * @ClassName UserServlet
 * @Description TODO
 * @Date 2019/9/25
 * @Version 1.0
 **/
public class UserService {
    private List<User> userList;

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    /**
     * 用户登陆功能
     *
     * @param account
     * @param password
     * @return user
     */
    public User signIn(String account, String password) {
        for (User user : userList) {
            if (user.getAccount().equals(account) && user.getPassword().equals(Md5Util.crypt(password))) {
                return user;
            }
        }
        return null;
    }
    public static void main(String[] args) {
        User user = new UserService().signIn("111", Md5Util.crypt("111"));
        if (user != null) {
            System.out.println(user);
        } else {
            System.out.println("登录失败");
        }
    }
}