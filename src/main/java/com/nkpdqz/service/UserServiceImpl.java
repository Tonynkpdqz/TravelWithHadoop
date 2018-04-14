package com.nkpdqz.service;

import com.nkpdqz.dao.UserDao;
import com.nkpdqz.domain.User;
import com.nkpdqz.utils.MD5Utils;
import org.mortbay.log.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    public void setDao(UserDao dao) {
        this.dao = dao;
    }

    @Override
    public boolean register(String username, String password, String rePassword, String prefer) {
        if (password.equals(rePassword)){
            String pass = MD5Utils.md5(password);
            dao.register(username,pass,prefer);
            System.out.println("register working!");
            return true;
        }else {
            return false;
        }
    }

    @Override
    public User login(String username, String password) {
        String pass = MD5Utils.md5(password);
        User user = dao.findUserByUsernameAndPassword(username, pass);
        if (user != null){
            return user;
        } else {
            return null;
        }
    }

    @Override
    public boolean isgetUsername(String username) {
        String username1 = dao.getUsername(username);
        if (username1 != null){
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean addPrefer(String prefer) {
        boolean b = dao.addPrefer(prefer);
        return b;
    }

}
