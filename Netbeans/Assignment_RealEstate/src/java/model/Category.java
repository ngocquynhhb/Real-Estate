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
    private String nameCa;

    public Category() {
    }

    public Category(int id, String nameCa) {
        this.id = id;
        this.nameCa = nameCa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameCa() {
        return nameCa;
    }

    public void setNameCa(String nameCa) {
        this.nameCa = nameCa;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", nameCa=" + nameCa + '}';
    }

    
    
}
