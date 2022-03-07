/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author kjuel
 */
public class AccountDAO extends BaseDAO<Account> {

    public Account dangnhap(String user, String pass) {
        String query = "SELECT * FROM [dbo].[account]\n"
                + "WHERE [user] = ?\n"
                + "AND pass = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, user);
            statement.setString(2, pass);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account kiemtraTaikhoan(String user) {
        String query = "SELECT * FROM [dbo].[account]\n"
                + "WHERE [user] = ?\n";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, user);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void dangKi(String user, String pass) {
        String query = "INSERT INTO dbo.account\n"
                + "VALUES(?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, user);
            statement.setString(2, pass);
            statement.executeUpdate();
        } catch (SQLException ex) {
        }     
    }

    public static void main(String[] args) {
        AccountDAO c = new AccountDAO();
        System.out.println(c.dangnhap("admin", "admin").getUser());
    }
}
