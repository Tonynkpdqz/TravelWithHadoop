package com.nkpdqz.RecommendDemo;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.model.jdbc.ReloadFromJDBCDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.CachingRecommender;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

import java.util.List;

public class MyUserBasedRecommender {

    public List<RecommendedItem> userBasedRecommender(long userID,int size) throws TasteException {
        // step:1 构建模型 2 计算相似度 3 查找k紧邻 4 构造推荐引擎
        List<RecommendedItem> recommendations = null;
        System.out.println("here");
        try {
            DataModel model = MyDataModel.myDataModel();//构造数据模型，Database-based
            System.out.println("here1");
            //用PearsonCorrelation 算法计算用户相似度
            UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
            System.out.println("here2");
            //计算用户的“邻居”，这里将与该用户最近距离为 3 的用户设置为该用户的“邻居”。
            UserNeighborhood neighborhood = new NearestNUserNeighborhood(3, similarity, model);
            System.out.println("here3");
            //构造推荐引擎，采用 CachingRecommender 为 RecommendationItem 进行缓存
            Recommender recommender = new CachingRecommender(new GenericUserBasedRecommender(model, neighborhood, similarity));
            System.out.println("here4");
            //得到推荐的结果，size是推荐接过的数目
            recommendations = recommender.recommend(userID, size);
            System.out.println(recommendations.size());
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return recommendations;
    }

    public static void main(String[] args) {

    }
}
