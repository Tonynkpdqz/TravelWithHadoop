package com.nkpdqz.dao;

import com.nkpdqz.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    void register(String username,String password,String prefer);
    User findUserByUsernameAndPassword(String username, String password);
    String getUsername(String username);
    boolean addPrefer(String prefer);

}
