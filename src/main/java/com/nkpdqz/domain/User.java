package com.nkpdqz.domain;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable{

    private int id;
    private String username;
    private String password;
    private String prefer;

    private List<Place> placeList;

    public List<Place> getPlaceList() {
        return placeList;
    }

    public void setPlaceList(List<Place> placeList) {
        this.placeList = placeList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPrefer() {
        return prefer;
    }

    public void setPrefer(String prefer) {
        this.prefer = prefer;
    }

    public User() {

    }

    public User(int id, String username, String password, String prefer, List<Place> placeList) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.prefer = prefer;
        this.placeList = placeList;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", prefer='" + prefer + '\'' +
                ", placeList=" + placeList +
                '}';
    }

}
