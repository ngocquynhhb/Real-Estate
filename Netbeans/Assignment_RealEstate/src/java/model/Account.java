/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kjuel
 */
public class Account {
    private int id;
    private String user;
    private String pass;
    private int isAdmin;
    private int isUser;
    private List<Comment> listCM = new ArrayList<>();
    
    public Account() {
    }

    public Account(int id, String user, String pass, int isAdmin, int isUser) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.isAdmin = isAdmin;
        this.isUser = isUser;
    }

    public List<Comment> getListCM() {
        return listCM;
    }

    public void setListCM(List<Comment> listCM) {
        this.listCM = listCM;
    }
 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getIsUser() {
        return isUser;
    }

    public void setIsUser(int isUser) {
        this.isUser = isUser;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", isAdmin=" + isAdmin + ", isUser=" + isUser + '}';
    }
    
}
