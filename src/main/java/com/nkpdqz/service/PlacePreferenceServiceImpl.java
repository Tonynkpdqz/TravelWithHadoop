package com.nkpdqz.service;

import com.nkpdqz.RecommendDemo.MyUserBasedRecommender;
import com.nkpdqz.dao.PlaceDao;
import com.nkpdqz.domain.Place;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PlacePreferenceServiceImpl implements PlacePreferenceService {

    @Autowired
    PlaceDao placeDao;

    private static MyUserBasedRecommender recommender = new MyUserBasedRecommender();
    @Override
    public Map<Place, Integer> getRecommendCitys(int userid, int number) throws TasteException {
        Map<Place,Integer> map = new HashMap<Place, Integer>();
        List<RecommendedItem> recommendedItems = recommender.userBasedRecommender(userid, number);
        for (RecommendedItem item:recommendedItems
             ) {
            long itemID = item.getItemID();
            float value = item.getValue();
            Place placeById = placeDao.getPlaceById((int) itemID);
            map.put(placeById, (int) value);
        }
        return map;
    }

    @Override
    public List<Place> getPlaceByRecommend(int userid, int number) {
        List<Place> list = new ArrayList<Place>();
        try {
            System.out.println("this");
            List<RecommendedItem> itemList = recommender.userBasedRecommender(userid, number);
            for (RecommendedItem item:itemList
                 ) {
                long id = item.getItemID();
                item.getValue();
                Place place = placeDao.getPlaceById((int) id);
                list.add(place);
            }
        } catch (TasteException e) {
            e.printStackTrace();
        }
        return list;
    }
}
