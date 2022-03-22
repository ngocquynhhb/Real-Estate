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
import model.Comment;
import model.News;

/**
 *
 * @author kjuel
 */
public class CommentDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Comment> addComments(String contentCm, int idACC, int idNews) {
        List<Comment> list = new ArrayList<>();
        String sql = "INSERT INTO [dbo].[comment] ([content] ,[idACC] ,[idNews]) VALUES (?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, contentCm);
            ps.setInt(2, idACC);
            ps.setInt(3, idNews);

            rs = ps.executeQuery();

        } catch (Exception e) {
        }

        return list;
    }

    public List<Comment> CommentsNews(int idNews) {
        List<Comment> list = new ArrayList<>();
        String sql = "SELECT n.idNews,c.content AS commentcontent, a.[user] AS usercomment,c.idComment FROM dbo.news AS n \n"
                + "JOIN dbo.comment AS c ON n.idNews = c.idNews\n"
                + "JOIN dbo.account AS a ON a.idACC = c.idACC\n"
                + "WHERE n.idNews = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, idNews);
            rs = ps.executeQuery();
            while (rs.next()) {
                Comment cm = new Comment();
                cm.setContentCm(rs.getString(2));
                cm.setCreatedBy(rs.getString(3));
                cm.setIdCm(rs.getInt(4));
                list.add(cm);
            }
        } catch (Exception e) {
        }

        return list;
    }

        //test
    public static void main(String[] args) {
        CommentDAO nd = new CommentDAO();
        List<Comment> list = nd.CommentsNews(13);
        for (Comment o : list) {
            System.out.println(o);
        }
    }
    
}
