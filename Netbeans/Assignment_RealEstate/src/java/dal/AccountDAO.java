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
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author kjuel
 */
public class AccountDAO {
    
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
    
    public static void main(String[] args) {
        AccountDAO c = new AccountDAO();
        System.out.println(c.login("admin", "admin").getUser()); 
    }
}
