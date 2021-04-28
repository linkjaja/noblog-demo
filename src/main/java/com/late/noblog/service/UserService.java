package com.late.noblog.service;

import com.late.noblog.po.User;

public interface UserService {

    User checkUser(String username, String password);
}
