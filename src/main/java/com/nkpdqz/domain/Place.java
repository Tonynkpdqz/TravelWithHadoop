package com.nkpdqz.domain;

import java.io.Serializable;

public class Place implements Serializable{

    private int cityId;

    private String cityname;
    private String scenic_spot;
    private String nicefood;

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getNicefood() {
        return nicefood;
    }

    public void setNicefood(String nicefood) {
        this.nicefood = nicefood;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getScenic_spot() {
        return scenic_spot;
    }

    public void setScenic_spot(String scenic_spot) {
        this.scenic_spot = scenic_spot;
    }



}
