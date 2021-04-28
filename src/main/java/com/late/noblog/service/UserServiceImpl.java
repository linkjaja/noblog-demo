package com.late.noblog.service;

import com.late.noblog.dao.UserRepository;
import com.late.noblog.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;



@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, DigestUtils.md5DigestAsHex(password.getBytes()));
        return user;
    }


    /* decode password
    public static void main(String[] args) {
        String code = "12345";
        System.out.println(DigestUtils.md5DigestAsHex(code.getBytes()));
    }*/
}
