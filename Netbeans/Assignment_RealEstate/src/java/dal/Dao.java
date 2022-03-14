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
import model.Account;
import model.Category;
import model.News;

/**
 *
 * @author kjuel
 */
public class Dao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String user, String pass) {
        String sql = "SELECT * FROM dbo.account \n"
                + "WHERE [user] = ?\n"
                + "AND pass = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccount(String user) {
        String sql = "SELECT * FROM [dbo].[account]\n"
                + "WHERE [user] = ?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void signup(String user, String pass) {

        String sql = "INSERT INTO dbo.account\n"
                + "VALUES(?,?,0,0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    //Category
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
    
    public List<News> getNewsByCategorys(String cid) {
        List<News> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.news\n"
                + " WHERE idCategory = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, cid);
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
    
    public List<News> getNewsByAdmin(int id) {
        List<News> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.news\n"
                + " WHERE idACC= ?";
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
    //News
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
    
    
}
