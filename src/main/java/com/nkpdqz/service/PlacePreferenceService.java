package com.nkpdqz.service;

import com.nkpdqz.domain.Place;
import org.apache.mahout.cf.taste.common.TasteException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

public interface PlacePreferenceService {
    Map<Place,Integer> getRecommendCitys(int id, int number) throws TasteException;
    List<Place> getPlaceByRecommend(int userid,int number);
}
