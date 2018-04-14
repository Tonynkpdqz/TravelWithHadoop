package com.nkpdqz.RecommendDemo;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.model.jdbc.ReloadFromJDBCDataModel;
import org.apache.mahout.cf.taste.model.DataModel;

public class MyDataModel {
    public static DataModel myDataModel() throws TasteException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        MysqlDataSource dataSource = new MysqlDataSource();//之后给这个配置链接
        dataSource.setServerName("localhost");
        dataSource.setUser("root");
        dataSource.setPassword("uAiqwVwjJ8-i");
        dataSource.setDatabaseName("trip_recommend");
        MySQLJDBCDataModel mySQLJDBCDataModel = new MySQLJDBCDataModel(dataSource,
                "place_preference", "userID", "cityID", "preference",null);
        return new ReloadFromJDBCDataModel(mySQLJDBCDataModel);
    }
}
