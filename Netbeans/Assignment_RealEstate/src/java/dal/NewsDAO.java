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
public class NewsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<News> getAllNews() {
        List<News> list = new ArrayList<>();
        String sql = "SELECT [idNews]\n"
                + "      ,[title]\n"
                + "      ,[thumbnail]\n"
                + "      ,[shortDescription]\n"
                + "      ,[content]\n"
                + "      ,news.idACC,category.idCategory    \n"
                + "	  ,nameCa\n"
                + "  FROM [dbo].[news],dbo.category,dbo.account\n"
                + "  WHERE news.idCategory = category.idCategory AND news.idACC =account.idACC AND isAdmin = ?";
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
                        rs.getInt(6),
                        new Category(rs.getInt(7),
                                rs.getString(8))));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public News getNews(int id) {
        String sql = "SELECT * FROM dbo.news WHERE idNews = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News();
                n.setIdNews(rs.getInt(1));
                n.setTitle(rs.getString(2));
                n.setThumbnail(rs.getString(3));
                n.setShortDes(rs.getString(4));
                n.setContent(rs.getString(5));
                return n;
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<News> getNewsByAdmin(int id) {
        List<News> list = new ArrayList<>();
        String sql = "SELECT [idNews] ,[title] ,[thumbnail] ,[shortDescription] ,[content] ,[idACC],category.idCategory ,nameCa FROM [dbo].[news],dbo.category WHERE news.idCategory = category.idCategory AND idACC = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
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

    public void addNews(String title, String image, String shortDes, String content, String category, int aid) {
        String sql = "INSERT INTO [dbo].[news]\n"
                + "           ([title]\n"
                + "           ,[thumbnail]\n"
                + "           ,[shortDescription]\n"
                + "           ,[content]\n"
                + "           ,[idACC]\n"
                + "           ,[idCategory])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, image);
            ps.setString(3, shortDes);
            ps.setString(4, content);
            ps.setInt(5, aid);
            ps.setString(6, category);

            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public void editNews(String title, String image, String shortDes, String content, String category, int aid,String nid) {
        String sql = "UPDATE [dbo].[news]\n"
                + "   SET [title] = ?\n"
                + "      ,[thumbnail] = ?\n"
                + "      ,[shortDescription] =?\n"
                + "      ,[content] = ?\n"
                + "      ,[idACC] =?\n"
                + "      ,[idCategory] = ?\n"
                + " WHERE idNews = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, image);
            ps.setString(3, shortDes);
            ps.setString(4, content);
            ps.setInt(5, aid);
            ps.setString(6, category);
            ps.setString(7, nid);

            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public void deleteNews(String nid) {
        String sql = "DELETE FROM dbo.news \n"
                + "WHERE idNews = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, nid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //test
    public static void main(String[] args) {
        NewsDAO nd = new NewsDAO();
        List<News> list = nd.getNewsByAdmin(1);
        for (News o : list) {
            System.out.println(o);
        }
    }
}
