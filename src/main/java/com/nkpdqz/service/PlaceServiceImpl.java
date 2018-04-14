package com.nkpdqz.service;

import com.nkpdqz.dao.PlaceDao;
import com.nkpdqz.dao.PlacePreferenceDao;
import com.nkpdqz.domain.Place;
import com.nkpdqz.domain.PlacePreference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceServiceImpl implements PlaceService {

    @Autowired
    private PlaceDao placeDao;

    @Autowired
    private PlacePreferenceDao placePreferenceDao;

    @Override
    public boolean addPlacePreference(int userid, String cityname, int pre) {
        boolean b = false;
        if (placeDao.getPlaceByName(cityname) == null){
            return false;
        }
        Place place = placeDao.getPlaceByName(cityname);
        if (place == null){
            int i = placeDao.insertPlace(cityname);
            Place placeByName = placeDao.getPlaceByName(cityname);
            int i1 = placePreferenceDao.addPreference(
                    userid, placeByName.getCityId(), pre);
            if (i1 == 1){
                b = true;
            }
        } else {
            int placeId = place.getCityId();
            System.out.println(userid+"+"+placeId+"+"+pre);
            int i = placePreferenceDao.addPreference(userid, placeId, pre);
            if (i == 1){
                b = true;
            }
            System.out.println(b);
        }
        return b;
    }

    @Override
    public Place getPlaceByCityName(String cityname) {
        if (!cityname.isEmpty()){
            return placeDao.getPlaceByName(cityname);
        }
        else return null;
    }

    @Override
    public List<PlacePreference> getPlacePreferenceByUserId(int userid) {
        List<PlacePreference> placePreference = placePreferenceDao.getPlacePreference(userid);
        return placePreference;
    }

    @Override
    public int insertPlace(String cityname) {
        int i = placeDao.insertPlace(cityname);
        return i;
    }

}
