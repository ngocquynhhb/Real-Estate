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
import model.Category;
import model.News;

/**
 *
 * @author kjuel
 */
public class CategoryDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public List<News> getNewsByCategorys(int cid) {
        List<News> list = new ArrayList<>();
        String sql = "SELECT [idNews] ,[title] ,[thumbnail] ,[shortDescription] ,[content] ,news.idACC,category.idCategory ,nameCa FROM [dbo].[news],dbo.category WHERE news.idCategory = category.idCategory AND news.idCategory = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new News(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        new Category(rs.getInt(7),
                                rs.getString(8))));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public Category getCategory(int id) {
        String sql = "SELECT * FROM dbo.category WHERE idCategory = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setNameCa(rs.getString(2));
                return c;
            }
        } catch (Exception e) {
        }

        return null;
    }

    public Category getCategoryById(int id) {
        String sql = "SELECT * FROM dbo.news WHERE idNews = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setNameCa(rs.getString(2));
                return c;
            }
        } catch (Exception e) {
        }

        return null;
    }

    //test
//    public static void main(String[] args) {
//        CategoryDao cd = new CategoryDao();
//        NewsDAO nd = new NewsDAO();
//        List<News> listN = nd.
//        List<Category> list = cd.getNewsByCategorys(1);
//        for (Category o : list) {
//            System.out.println(o);
//        }
//    }
}
