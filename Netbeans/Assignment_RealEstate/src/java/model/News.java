/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

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
    private int idCategory;

    public News() {
    }

    public News(int idNews, String title, String thumbnail, String shortDes, String content, int idCategory) {
        this.idNews = idNews;
        this.title = title;
        this.thumbnail = thumbnail;
        this.shortDes = shortDes;
        this.content = content;
        this.idCategory = idCategory;
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

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    @Override
    public String toString() {
        return "News{" + "idNews=" + idNews + ", title=" + title + ", thumbnail=" + thumbnail + ", shortDes=" + shortDes + ", content=" + content + ", idCategory=" + idCategory + '}';
    }
    
    
}
