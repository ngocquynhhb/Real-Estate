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
public class Comment {
    private int idCm;
    private String contentCm;
    private String createdBy;
    private Account acc;
    private News ns;

    public Comment() {
    }

    public Comment(int idCm, String contentCm, String createdBy, Account acc, News ns) {
        this.idCm = idCm;
        this.contentCm = contentCm;
        this.createdBy = createdBy;
        this.acc = acc;
        this.ns = ns;
    }

    public int getIdCm() {
        return idCm;
    }

    public void setIdCm(int idCm) {
        this.idCm = idCm;
    }

    public String getContentCm() {
        return contentCm;
    }

    public void setContentCm(String contentCm) {
        this.contentCm = contentCm;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public Account getAcc() {
        return acc;
    }

    public void setAcc(Account acc) {
        this.acc = acc;
    }

    public News getNs() {
        return ns;
    }

    public void setNs(News ns) {
        this.ns = ns;
    }

    @Override
    public String toString() {
        return "Comment{" + "idCm=" + idCm + ", contentCm=" + contentCm + ", createdBy=" + createdBy + ", acc=" + acc + ", ns=" + ns + '}';
    }
    
    
}
