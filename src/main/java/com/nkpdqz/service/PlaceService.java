package com.nkpdqz.service;

import com.nkpdqz.domain.Place;
import com.nkpdqz.domain.PlacePreference;

import java.util.List;

public interface PlaceService {

    boolean addPlacePreference(int userid,String cityname,int pre);
    Place getPlaceByCityName(String cityname);
    List<PlacePreference> getPlacePreferenceByUserId(int userid);
    int insertPlace(String cityname);

}
