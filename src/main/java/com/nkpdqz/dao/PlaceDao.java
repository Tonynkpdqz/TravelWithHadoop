package com.nkpdqz.dao;

import com.nkpdqz.domain.Place;
import org.springframework.stereotype.Repository;

@Repository
public interface PlaceDao {

    int getPlaceId(String cityname);
    Place getPlaceByName(String cityname);
    Place getPlaceById(int id);
    int insertPlace(String name);
}
