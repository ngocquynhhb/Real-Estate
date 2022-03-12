/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.News;

/**
 *
 * @author kjuel
 */
public class NewsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<News> getAllNews() {
        List<News> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.news";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new News(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)));
            }
        } catch (Exception e) {

        }

        return list;
    }
    
    //test
    public static void main(String[] args) {
        NewsDAO nd = new NewsDAO();
        List<News> list = nd.getAllNews();
        for (News o : list) {
            System.out.println(o);
        }
    }
}
