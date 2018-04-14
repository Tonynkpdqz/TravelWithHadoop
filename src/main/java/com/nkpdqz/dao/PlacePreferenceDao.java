package com.nkpdqz.dao;

import com.nkpdqz.domain.PlacePreference;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlacePreferenceDao {

    int addPreference(int userid,int cityid,int preference);
    List<PlacePreference> getPlacePreference(int userid);

}
