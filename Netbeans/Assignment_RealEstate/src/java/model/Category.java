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
public class Category {
    private int id;
    private String nameCaString;

    public Category() {
    }

    public Category(int id, String nameCaString) {
        this.id = id;
        this.nameCaString = nameCaString;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameCaString() {
        return nameCaString;
    }

    public void setNameCaString(String nameCaString) {
        this.nameCaString = nameCaString;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", nameCaString=" + nameCaString + '}';
    }

    
    
}
