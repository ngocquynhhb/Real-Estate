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
public class News {

    private int idNews;
    private String title;
    private String thumbnail;
    private String shortDes;
    private String content;
    private int idACC;
    private Category gory;
    private List<Comment> listCMN = new ArrayList<>();
    
    public News() {
    }

    public News(int idNews, String title, String thumbnail, String shortDes, String content, int idACC, Category gory) {
        this.idNews = idNews;
        this.title = title;
        this.thumbnail = thumbnail;
        this.shortDes = shortDes;
        this.content = content;
        this.idACC = idACC;
        this.gory = gory;
    }

    public List<Comment> getListCMN() {
        return listCMN;
    }

    public void setListCMN(List<Comment> listCMN) {
        this.listCMN = listCMN;
    }

    public Category getGory() {
        return gory;
    }

    public void setGory(Category gory) {
        this.gory = gory;
    }

    public int getIdNews() {
        return idNews;
    }

    public void setIdNews(int idNews) {
        this.idNews = idNews;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getShortDes() {
        return shortDes;
    }

    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getIdACC() {
        return idACC;
    }

    public void setIdACC(int idACC) {
        this.idACC = idACC;
    }

    @Override
    public String toString() {
        return "News{" + "idNews=" + idNews + ", title=" + title + ", thumbnail=" + thumbnail + ", shortDes=" + shortDes + ", content=" + content + ", idACC=" + idACC + ", gory=" + gory + '}';
    }

}
