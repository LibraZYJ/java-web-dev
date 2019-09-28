package com.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author yujie_zhao
 * @ClassName UserServiet
 * @Description TODO
 * @Date 2019/9/25
 * @Version 1.0
 **/
public class UserService {
    private List<User> userList;

    public UserService() {
        init();
    }

    /**
     * 数据初始化方法
     */
    public List<User> init() {
        userList = new ArrayList<>(3);
        User[] users = {
                new User("111", "698d51a19d8a121ce581499d7b701668", "开到荼蘼", "1.jpg"),
                new User("222", "bcbe3365e6ac95ea2c0343a2395834dd", "小幸运", "2.jpg"),
                new User("333", "310dcbbf4cce62f762a2aaa148d556bd", "往后余生", "3.jpg")
        };
        userList = Arrays.asList(users);
        return userList;
    }

    /**
     * 登陆功能
     *
     * @param account
     * @param password
     * @return user
     */
    public User signIn(String account, String password) {
        for (User user : userList) {
            if (user.getAccount().equals(account) && user.getPassword().equals(password)) {
                return user;
            }
        }
        return null;
    }
    public static void main(String[] args) {
        User user = new UserService().signIn("111", Md5Util.crypt("111"));
        System.out.println(user);
    }
}
