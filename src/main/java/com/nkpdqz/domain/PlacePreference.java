package com.nkpdqz.domain;

import java.io.Serializable;

public class PlacePreference implements Serializable {

    private int userID;
    private int cityID;
    private int preference;

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getCityID() {
        return cityID;
    }

    public void setCityID(int cityID) {
        this.cityID = cityID;
    }

    public int getPreference() {
        return preference;
    }

    public void setPreference(int preference) {
        this.preference = preference;
    }

}
